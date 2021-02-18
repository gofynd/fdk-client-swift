public class ApplicationClient {

    public let catalog: Catalog

    public let lead: Lead

    public let share: Share

    public init(config: ApplicationConfig) {
        
        catalog = Catalog(config: config)
        
        lead = Lead(config: config)
        
        share = Share(config: config)
        
    }
}