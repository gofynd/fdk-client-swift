public class ApplicationClient {

    public let catalog: Catalog

    public let lead: Lead

    public let order: Order

    public let posCart: PosCart

    public init(config: ApplicationConfig) {
        
        catalog = Catalog(config: config)
        
        lead = Lead(config: config)
        
        order = Order(config: config)
        
        posCart = PosCart(config: config)
        
    }
}