
import Foundation

public class PublicClient {
    public let configuration: Configuration

    public init(config: PublicConfig) {
        configuration = Configuration(config: config)
    }
}
