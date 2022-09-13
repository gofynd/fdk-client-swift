

import Foundation
public extension PlatformClient {
    /*
         Model: ShipmentPayments
         Used By: Order
     */

    class ShipmentPayments: Codable {
        public var mode: String

        public var displayPriority: Int

        public var sourceNickname: String?

        public var displayName: String

        public var source: String

        public var logo: String

        public var spId: Int

        public var paymentIdentifier: String?

        public var isActive: Bool

        public enum CodingKeys: String, CodingKey {
            case mode

            case displayPriority = "display_priority"

            case sourceNickname = "source_nickname"

            case displayName = "display_name"

            case source

            case logo

            case spId = "sp_id"

            case paymentIdentifier = "payment_identifier"

            case isActive = "is_active"
        }

        public init(displayName: String, displayPriority: Int, isActive: Bool, logo: String, mode: String, paymentIdentifier: String? = nil, source: String, sourceNickname: String? = nil, spId: Int) {
            self.mode = mode

            self.displayPriority = displayPriority

            self.sourceNickname = sourceNickname

            self.displayName = displayName

            self.source = source

            self.logo = logo

            self.spId = spId

            self.paymentIdentifier = paymentIdentifier

            self.isActive = isActive
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            mode = try container.decode(String.self, forKey: .mode)

            displayPriority = try container.decode(Int.self, forKey: .displayPriority)

            do {
                sourceNickname = try container.decode(String.self, forKey: .sourceNickname)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            displayName = try container.decode(String.self, forKey: .displayName)

            source = try container.decode(String.self, forKey: .source)

            logo = try container.decode(String.self, forKey: .logo)

            spId = try container.decode(Int.self, forKey: .spId)

            do {
                paymentIdentifier = try container.decode(String.self, forKey: .paymentIdentifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isActive = try container.decode(Bool.self, forKey: .isActive)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(mode, forKey: .mode)

            try? container.encodeIfPresent(displayPriority, forKey: .displayPriority)

            try? container.encodeIfPresent(sourceNickname, forKey: .sourceNickname)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(source, forKey: .source)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(spId, forKey: .spId)

            try? container.encodeIfPresent(paymentIdentifier, forKey: .paymentIdentifier)

            try? container.encodeIfPresent(isActive, forKey: .isActive)
        }
    }
}
