

import Foundation
public extension PlatformClient {
    /*
         Model: OrderingStoreConfig
         Used By: Configuration
     */

    class OrderingStoreConfig: Codable {
        public var deploymentMeta: DeploymentMeta?

        public enum CodingKeys: String, CodingKey {
            case deploymentMeta = "deployment_meta"
        }

        public init(deploymentMeta: DeploymentMeta? = nil) {
            self.deploymentMeta = deploymentMeta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                deploymentMeta = try container.decode(DeploymentMeta.self, forKey: .deploymentMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(deploymentMeta, forKey: .deploymentMeta)
        }
    }
}
