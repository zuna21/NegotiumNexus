public class Location 
{
    public int Id { get; set; }
    public string Name { get; set; }

    public List<Service> Services{ get; set; } = [];
}