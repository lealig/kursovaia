using System.Data.Entity;

namespace WpfApp1
{
    class ApplicationContext : DbContext
    {
        public DbSet<station> stations { get; set; }

        public ApplicationContext() : base("DefaultConnection") { }
    }
}
