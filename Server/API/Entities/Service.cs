public class Service 
{
    public int Id { get; set; }
    public string Name { get; set; }
    public string Description { get; set; }
    public double Price { get; set; } = 0;
    public string Phone { get; set; }
    public bool IsActive { get; set; }
    public DateTime CreatedAt { get; set; } = DateTime.UtcNow;

    public int LocationId { get; set; }
    public int UserId { get; set; }
    public List<FavouriteService> FavouriteUsers { get; set; } = [];
}