

import Foundation
public extension PlatformClient {
    /*
         Model: ShipmentPayments
         Used By: Order
     */

    class ShipmentPayments: Codable {
        public var mode: String

        public var displayPriority: Int

        public var displayName: String

        public var sourceNickname: String?

        public var logo: String

        public var paymentIdentifier: String?

        public var spId: Int

        public var source: String

        public var isActive: Bool

        public enum CodingKeys: String, CodingKey {
            case mode

            case displayPriority = "display_priority"

            case displayName = "display_name"

            case sourceNickname = "source_nickname"

            case logo

            case paymentIdentifier = "payment_identifier"

            case spId = "sp_id"

            case source

            case isActive = "is_active"
        }

        public init(displayName: String, displayPriority: Int, isActive: Bool, logo: String, mode: String, paymentIdentifier: String? = nil, source: String, sourceNickname: String? = nil, spId: Int) {
            self.mode = mode

            self.displayPriority = displayPriority

            self.displayName = displayName

            self.sourceNickname = sourceNickname

            self.logo = logo

            self.paymentIdentifier = paymentIdentifier

            self.spId = spId

            self.source = source

            self.isActive = isActive
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            mode = try container.decode(String.self, forKey: .mode)

            displayPriority = try container.decode(Int.self, forKey: .displayPriority)

            displayName = try container.decode(String.self, forKey: .displayName)

            do {
                sourceNickname = try container.decode(String.self, forKey: .sourceNickname)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            logo = try container.decode(String.self, forKey: .logo)

            do {
                paymentIdentifier = try container.decode(String.self, forKey: .paymentIdentifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            spId = try container.decode(Int.self, forKey: .spId)

            source = try container.decode(String.self, forKey: .source)

            isActive = try container.decode(Bool.self, forKey: .isActive)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(mode, forKey: .mode)

            try? container.encodeIfPresent(displayPriority, forKey: .displayPriority)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(sourceNickname, forKey: .sourceNickname)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(paymentIdentifier, forKey: .paymentIdentifier)

            try? container.encodeIfPresent(spId, forKey: .spId)

            try? container.encodeIfPresent(source, forKey: .source)

            try? container.encodeIfPresent(isActive, forKey: .isActive)
        }
    }
}
