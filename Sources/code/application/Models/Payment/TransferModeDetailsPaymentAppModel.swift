

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: TransferModeDetails
         Used By: Payment
     */
    class TransferModeDetails: Codable {
        public var displayName: String

        public var items: [TransferItemsDetails]?

        public enum CodingKeys: String, CodingKey {
            case displayName = "display_name"

            case items
        }

        public init(displayName: String, items: [TransferItemsDetails]? = nil) {
            self.displayName = displayName

            self.items = items
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            displayName = try container.decode(String.self, forKey: .displayName)

            do {
                items = try container.decode([TransferItemsDetails].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(items, forKey: .items)
        }
    }
}
