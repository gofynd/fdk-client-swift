

import Foundation
public extension PlatformClient {
    /*
         Model: ShipmentPayments
         Used By: Order
     */

    class ShipmentPayments: Codable {
        public var mode: String

        public var logo: String

        public var sourceNickname: String?

        public var isActive: Bool

        public var displayName: String

        public var spId: Int

        public var displayPriority: Int

        public var source: String

        public var paymentIdentifier: String?

        public enum CodingKeys: String, CodingKey {
            case mode

            case logo

            case sourceNickname = "source_nickname"

            case isActive = "is_active"

            case displayName = "display_name"

            case spId = "sp_id"

            case displayPriority = "display_priority"

            case source

            case paymentIdentifier = "payment_identifier"
        }

        public init(displayName: String, displayPriority: Int, isActive: Bool, logo: String, mode: String, paymentIdentifier: String? = nil, source: String, sourceNickname: String? = nil, spId: Int) {
            self.mode = mode

            self.logo = logo

            self.sourceNickname = sourceNickname

            self.isActive = isActive

            self.displayName = displayName

            self.spId = spId

            self.displayPriority = displayPriority

            self.source = source

            self.paymentIdentifier = paymentIdentifier
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            mode = try container.decode(String.self, forKey: .mode)

            logo = try container.decode(String.self, forKey: .logo)

            do {
                sourceNickname = try container.decode(String.self, forKey: .sourceNickname)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isActive = try container.decode(Bool.self, forKey: .isActive)

            displayName = try container.decode(String.self, forKey: .displayName)

            spId = try container.decode(Int.self, forKey: .spId)

            displayPriority = try container.decode(Int.self, forKey: .displayPriority)

            source = try container.decode(String.self, forKey: .source)

            do {
                paymentIdentifier = try container.decode(String.self, forKey: .paymentIdentifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(mode, forKey: .mode)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(sourceNickname, forKey: .sourceNickname)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(spId, forKey: .spId)

            try? container.encodeIfPresent(displayPriority, forKey: .displayPriority)

            try? container.encodeIfPresent(source, forKey: .source)

            try? container.encodeIfPresent(paymentIdentifier, forKey: .paymentIdentifier)
        }
    }
}
