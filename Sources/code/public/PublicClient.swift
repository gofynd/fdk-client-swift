
import Foundation

public class PublicClient {

    public let catalog: Catalog

    public let configuration: Configuration

    public let content: Content

    public let partner: Partner

    public let webhook: Webhook

    public init(config: PublicConfig) {
        
        catalog = Catalog(config: config)
        
        configuration = Configuration(config: config)
        
        content = Content(config: config)
        
        partner = Partner(config: config)
        
        webhook = Webhook(config: config)
        
    }
}