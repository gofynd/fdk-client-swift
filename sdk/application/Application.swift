public class Application {

    public let lead: Lead

    public init(config: ApplicationConfig) {
        
        lead = Lead(config: config)
        
    }
}