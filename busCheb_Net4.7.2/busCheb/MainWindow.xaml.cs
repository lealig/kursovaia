using System;
using System.Collections.Generic;
using System.Linq;
using System.Windows;
using System.Windows.Controls;
using RestSharp;

namespace WpfApp1
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    /// 
    public partial class MainWindow : Window
    {
        List<string> stationsList = new List<string>();
        public class stInfo {
            public string Маршрут { get; set; }
            public string Локация { get; set; }
            public string Прибытие { get; set; }
        }
        public MainWindow()
        {

            InitializeComponent();

            var client = new RestClient("https://buscheb.ru");
            var request = new RestRequest("https://buscheb.ru/php/getStations.php?city=cheboksari&info=12345&lang=ru&_=1728061934");
            var response = client.ExecuteGet(request);
            string[] responseContentString = response.Content.Split('}');

            stationsBox.Items.Clear();

            using (ApplicationContext context = new ApplicationContext()) {
                bool insert = false;

                if (responseContentString.Count() != context.stations.Count() + 1) {
                    insert = true;
                    context.stations.RemoveRange(context.stations.ToList());
                }

                if (insert)
                {
                    string stationId = "";
                    string stationName = "";
                    station st = null;
                    foreach (string i in responseContentString)
                        if (i.IndexOf("id") != -1 && i.IndexOf("name") != -1)
                        {
                            stationId = i.Substring(i.IndexOf("id") + 4, i.Length - i.Substring(i.IndexOf(",\"name")).Length - 7);
                            stationName = i.Substring(i.IndexOf("name") + 7, i.Substring(i.IndexOf(",\"name") + 7).Length - i.Substring(i.IndexOf("\",\"descr")).Length - 2).Replace(@"\", "") + " "
                            + i.Substring(i.IndexOf("descr") + 8, i.Substring(i.IndexOf("\",\"descr") + 13).Length - i.Substring(i.IndexOf("lat")).Length - 1).Replace("\"", "");


                            if (st != null && stationName == st.stationName) stationName += " ";
                            st = new station(stationId, stationName);
                            context.stations.Add(st);
                            stationsList.Add(st.stationName);

                        }
                    context.SaveChanges();
                } else foreach (station st in context.stations.ToList()) {
                        stationsList.Add(st.stationName);
                    }
            }
            stationsBox.ItemsSource = stationsList;

        }

        private void Update(int stId) {
            var client = new RestClient("https://buscheb.ru");

            var request1 = new RestRequest("https://buscheb.ru/php/getStationForecasts.php?sid="
                + Convert.ToString(stId)
                + "&type=0&city=cheboksari&info=12345&lang=ru&_=1729541230169");

            var response1 = client.ExecuteGet(request1);

            string[] responseContentString = response1.Content.Split('}');

            List<stInfo> it = new List<stInfo>();

            int arrT;
            foreach (string i in responseContentString)
                if (i.IndexOf("where") != -1 && i.IndexOf("vehid") != -1)
                {
                    arrT = Convert.ToInt16(i.Substring(9, i.Length - i.Substring(i.IndexOf("where") - 11).Length));
                    it.Add(new stInfo { Маршрут = i.Substring(i.IndexOf("rtype") + 8, 1) + i.Substring(i.IndexOf("rnum") + 7, 3).Replace("\"", "").Replace(",", ""), 
                        Локация = i.Substring(i.IndexOf("where") + 8, i.Length - i.Substring(i.IndexOf("vehid") - 25).Length).Replace("\"", "").Replace(@"\",""), 
                        Прибытие = Convert.ToString(arrT / 60) + " мин, " + Convert.ToString(arrT % 60) + " сек" });
                }

            busInfo.ItemsSource = it;
        }

        private void stationsBox_Selected(object sender, RoutedEventArgs e)
        {
            string selectedStation = Convert.ToString(stationsBox.SelectedValue);
            int stId = 0;
            station st = null;
            using (ApplicationContext context = new ApplicationContext())
            {
                st = context.stations.Where(s => s.stationName == selectedStation).FirstOrDefault();
                if (st != null) stId = Convert.ToInt32(st.stationId);
            }
            
            Update(stId);
        }

        private void TextBox_TextChanged(object sender, TextChangedEventArgs e)
        {   
            if (textBox1.Text == "Поиск" && stationsBox != null) {
                stationsBox.ItemsSource = stationsList;
                return;
            }
            else if (stationsBox == null) return;
            stationsBox.SelectedIndex = -1;
            string searchString = textBox1.Text;
            if (searchString == "") {
                stationsBox.ItemsSource = stationsList;
                return;
            }
            stationsBox.ItemsSource = stationsList.FindAll((string s) => s.StartsWith(searchString)); ;
        }

        private void textBox1_PreviewMouseDown(object sender, System.Windows.Input.MouseButtonEventArgs e)
        {
            if (textBox1.Text == "Поиск") textBox1.Text = "";
        }
    }
}
