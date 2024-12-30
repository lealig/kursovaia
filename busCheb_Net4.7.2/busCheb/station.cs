using System.ComponentModel.DataAnnotations;

namespace WpfApp1
{
    public class station
    {
        [Key]
        public int id { get; set; }
        public string stationId { get; set; }
        public string stationName { get; set; }

        public station() { }

        public station(string stationId, string stationName) {
            this.stationId = stationId;
            this.stationName = stationName;
        }
    }
}
