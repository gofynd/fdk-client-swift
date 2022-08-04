
import Foundation

public class PublicClient {
    public let configuration: Configuration

    public let webhook: Webhook

    public let inventory: Inventory

    public init(config: PublicConfig) {
        configuration = Configuration(config: config)

        webhook = Webhook(config: config)

        inventory = Inventory(config: config)
    }
}
