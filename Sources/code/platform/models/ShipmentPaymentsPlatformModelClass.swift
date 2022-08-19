

import Foundation
public extension PlatformClient {
    /*
         Model: ShipmentPayments
         Used By: Order
     */

    class ShipmentPayments: Codable {
        public var isActive: Bool

        public var logo: String

        public var spId: Int

        public var sourceNickname: String?

        public var paymentIdentifier: String?

        public var displayName: String

        public var displayPriority: Int

        public var mode: String

        public var source: String

        public enum CodingKeys: String, CodingKey {
            case isActive = "is_active"

            case logo

            case spId = "sp_id"

            case sourceNickname = "source_nickname"

            case paymentIdentifier = "payment_identifier"

            case displayName = "display_name"

            case displayPriority = "display_priority"

            case mode

            case source
        }

        public init(displayName: String, displayPriority: Int, isActive: Bool, logo: String, mode: String, paymentIdentifier: String? = nil, source: String, sourceNickname: String? = nil, spId: Int) {
            self.isActive = isActive

            self.logo = logo

            self.spId = spId

            self.sourceNickname = sourceNickname

            self.paymentIdentifier = paymentIdentifier

            self.displayName = displayName

            self.displayPriority = displayPriority

            self.mode = mode

            self.source = source
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            logo = try container.decode(String.self, forKey: .logo)

            spId = try container.decode(Int.self, forKey: .spId)

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

            displayName = try container.decode(String.self, forKey: .displayName)

            displayPriority = try container.decode(Int.self, forKey: .displayPriority)

            mode = try container.decode(String.self, forKey: .mode)

            source = try container.decode(String.self, forKey: .source)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(spId, forKey: .spId)

            try? container.encodeIfPresent(sourceNickname, forKey: .sourceNickname)

            try? container.encodeIfPresent(paymentIdentifier, forKey: .paymentIdentifier)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(displayPriority, forKey: .displayPriority)

            try? container.encodeIfPresent(mode, forKey: .mode)

            try? container.encodeIfPresent(source, forKey: .source)
        }
    }
}
