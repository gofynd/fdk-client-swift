
import Foundation

public class ApplicationClient {
    private let config: ApplicationConfig

    public let cart: Cart

    public let catalog: Catalog

    public let common: Common

    public let communication: Communication

    public let configuration: Configuration

    public let content: Content

    public let fileStorage: FileStorage

    public let lead: Lead

    public let logistic: Logistic

    public let order: Order

    public let payment: Payment

    public let posCart: PosCart

    public let rewards: Rewards

    public let share: Share

    public let theme: Theme

    public let user: User

    public init(config: ApplicationConfig) {
        self.config = config

        
        cart = Cart(config: config)
        
        catalog = Catalog(config: config)
        
        common = Common(config: config)
        
        communication = Communication(config: config)
        
        configuration = Configuration(config: config)
        
        content = Content(config: config)
        
        fileStorage = FileStorage(config: config)
        
        lead = Lead(config: config)
        
        logistic = Logistic(config: config)
        
        order = Order(config: config)
        
        payment = Payment(config: config)
        
        posCart = PosCart(config: config)
        
        rewards = Rewards(config: config)
        
        share = Share(config: config)
        
        theme = Theme(config: config)
        
        user = User(config: config)
        
    }

    public func setLocationDetails(details: ApplicationConfig.LocationDetails?){
        config.locationDetails = details
    }
}