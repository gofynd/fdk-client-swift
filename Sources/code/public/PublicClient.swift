
import Foundation

public class PublicClient {
    public let configuration: Configuration

    public let webhook: Webhook

    public init(config: PublicConfig) {
        configuration = Configuration(config: config)

        webhook = Webhook(config: config)
    }
}
