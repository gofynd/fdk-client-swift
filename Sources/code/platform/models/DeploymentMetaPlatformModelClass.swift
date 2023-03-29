

import Foundation
public extension PlatformClient {
    /*
         Model: DeploymentMeta
         Used By: Configuration
     */

    class DeploymentMeta: Codable {
        public var deployedStores: [Int]?

        public var allStores: Bool?

        public var enabled: Bool?

        public var type: String?

        public var id: String?

        public var app: String?

        public enum CodingKeys: String, CodingKey {
            case deployedStores = "deployed_stores"

            case allStores = "all_stores"

            case enabled

            case type

            case id = "_id"

            case app
        }

        public init(allStores: Bool? = nil, app: String? = nil, deployedStores: [Int]? = nil, enabled: Bool? = nil, type: String? = nil, id: String? = nil) {
            self.deployedStores = deployedStores

            self.allStores = allStores

            self.enabled = enabled

            self.type = type

            self.id = id

            self.app = app
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                deployedStores = try container.decode([Int].self, forKey: .deployedStores)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                allStores = try container.decode(Bool.self, forKey: .allStores)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                enabled = try container.decode(Bool.self, forKey: .enabled)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                app = try container.decode(String.self, forKey: .app)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(deployedStores, forKey: .deployedStores)

            try? container.encodeIfPresent(allStores, forKey: .allStores)

            try? container.encodeIfPresent(enabled, forKey: .enabled)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(app, forKey: .app)
        }
    }
}
