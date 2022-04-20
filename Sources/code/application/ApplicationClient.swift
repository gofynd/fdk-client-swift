
import Foundation

public class ApplicationClient {
    private let config: ApplicationConfig

    public let catalog: Catalog

    public let cart: Cart

    public let common: Common

    public let lead: Lead

    public let theme: Theme

    public let user: User

    public let content: Content

    public let communication: Communication

    public let share: Share

    public let fileStorage: FileStorage

    public let configuration: Configuration

    public let payment: Payment

    public let order: Order

    public let rewards: Rewards

    public let feedback: Feedback

    public let posCart: PosCart

    public let logistic: Logistic

    public init(config: ApplicationConfig) {
        self.config = config

        catalog = Catalog(config: config)

        cart = Cart(config: config)

        common = Common(config: config)

        lead = Lead(config: config)

        theme = Theme(config: config)

        user = User(config: config)

        content = Content(config: config)

        communication = Communication(config: config)

        share = Share(config: config)

        fileStorage = FileStorage(config: config)

        configuration = Configuration(config: config)

        payment = Payment(config: config)

        order = Order(config: config)

        rewards = Rewards(config: config)

        feedback = Feedback(config: config)

        posCart = PosCart(config: config)

        logistic = Logistic(config: config)
    }

    public func setLocationDetails(details: ApplicationConfig.LocationDetails?) {
        config.locationDetails = details
    }
}
