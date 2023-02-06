

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateConfig
         Used By: OrderManage
     */

    class AffiliateConfig: Codable {
        public var app: AffiliateAppConfig?

        public var inventory: AffiliateInventoryConfig?

        public enum CodingKeys: String, CodingKey {
            case app

            case inventory
        }

        public init(app: AffiliateAppConfig? = nil, inventory: AffiliateInventoryConfig? = nil) {
            self.app = app

            self.inventory = inventory
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                app = try container.decode(AffiliateAppConfig.self, forKey: .app)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                inventory = try container.decode(AffiliateInventoryConfig.self, forKey: .inventory)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(app, forKey: .app)

            try? container.encodeIfPresent(inventory, forKey: .inventory)
        }
    }
}
