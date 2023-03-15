

import Foundation
public extension PlatformClient {
    /*
         Model: Validators
         Used By: Configuration
     */

    class Validators: Codable {
        public var company: CompanyValidator?

        public var store: StoreValidator?

        public var inventory: InventoryValidator?

        public var order: OrderValidator?

        public enum CodingKeys: String, CodingKey {
            case company

            case store

            case inventory

            case order
        }

        public init(company: CompanyValidator? = nil, inventory: InventoryValidator? = nil, order: OrderValidator? = nil, store: StoreValidator? = nil) {
            self.company = company

            self.store = store

            self.inventory = inventory

            self.order = order
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                company = try container.decode(CompanyValidator.self, forKey: .company)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                store = try container.decode(StoreValidator.self, forKey: .store)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                inventory = try container.decode(InventoryValidator.self, forKey: .inventory)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                order = try container.decode(OrderValidator.self, forKey: .order)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(inventory, forKey: .inventory)

            try? container.encodeIfPresent(order, forKey: .order)
        }
    }
}
