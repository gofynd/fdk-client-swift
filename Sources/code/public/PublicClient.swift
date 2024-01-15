
import Foundation

public class PublicClient {

    public let billing: Billing

    public let configuration: Configuration

    public let content: Content

    public let inventory: Inventory

    public let partner: Partner

    public let webhook: Webhook

    public init(config: PublicConfig) {
        
        billing = Billing(config: config)
        
        configuration = Configuration(config: config)
        
        content = Content(config: config)
        
        inventory = Inventory(config: config)
        
        partner = Partner(config: config)
        
        webhook = Webhook(config: config)
        
    }
}