public class User 
{
    public int Id { get; set; }
    public string Username { get; set; }
    public byte[] Password { get; set; }

    public List<Service> Services { get; set; } = [];
    public List<FavouriteService> FavouriteServices { get; set; } = [];
}