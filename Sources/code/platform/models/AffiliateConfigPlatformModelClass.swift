

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateConfig
         Used By: OrderManage
     */

    class AffiliateConfig: Codable {
        public var inventory: AffiliateInventoryConfig?

        public var app: AffiliateAppConfig?

        public enum CodingKeys: String, CodingKey {
            case inventory

            case app
        }

        public init(app: AffiliateAppConfig? = nil, inventory: AffiliateInventoryConfig? = nil) {
            self.inventory = inventory

            self.app = app
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                inventory = try container.decode(AffiliateInventoryConfig.self, forKey: .inventory)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                app = try container.decode(AffiliateAppConfig.self, forKey: .app)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(inventory, forKey: .inventory)

            try? container.encodeIfPresent(app, forKey: .app)
        }
    }
}
