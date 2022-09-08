

import Foundation
public extension PlatformClient {
    /*
         Model: ShipmentPayments
         Used By: Order
     */

    class ShipmentPayments: Codable {
        public var source: String

        public var isActive: Bool

        public var mode: String

        public var displayName: String

        public var logo: String

        public var sourceNickname: String?

        public var paymentIdentifier: String?

        public var displayPriority: Int

        public var spId: Int

        public enum CodingKeys: String, CodingKey {
            case source

            case isActive = "is_active"

            case mode

            case displayName = "display_name"

            case logo

            case sourceNickname = "source_nickname"

            case paymentIdentifier = "payment_identifier"

            case displayPriority = "display_priority"

            case spId = "sp_id"
        }

        public init(displayName: String, displayPriority: Int, isActive: Bool, logo: String, mode: String, paymentIdentifier: String? = nil, source: String, sourceNickname: String? = nil, spId: Int) {
            self.source = source

            self.isActive = isActive

            self.mode = mode

            self.displayName = displayName

            self.logo = logo

            self.sourceNickname = sourceNickname

            self.paymentIdentifier = paymentIdentifier

            self.displayPriority = displayPriority

            self.spId = spId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            source = try container.decode(String.self, forKey: .source)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            mode = try container.decode(String.self, forKey: .mode)

            displayName = try container.decode(String.self, forKey: .displayName)

            logo = try container.decode(String.self, forKey: .logo)

            do {
                sourceNickname = try container.decode(String.self, forKey: .sourceNickname)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                paymentIdentifier = try container.decode(String.self, forKey: .paymentIdentifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            displayPriority = try container.decode(Int.self, forKey: .displayPriority)

            spId = try container.decode(Int.self, forKey: .spId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(source, forKey: .source)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(mode, forKey: .mode)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(sourceNickname, forKey: .sourceNickname)

            try? container.encodeIfPresent(paymentIdentifier, forKey: .paymentIdentifier)

            try? container.encodeIfPresent(displayPriority, forKey: .displayPriority)

            try? container.encodeIfPresent(spId, forKey: .spId)
        }
    }
}
