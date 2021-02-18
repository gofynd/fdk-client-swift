public class ApplicationClient {

    public let catalog: Catalog

    public let cart: Cart

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

    public init(config: ApplicationConfig) {
        
        catalog = Catalog(config: config)
        
        cart = Cart(config: config)
        
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
        
    }
}