

import Foundation
public extension ApplicationClient.Theme {
    /*
         Model: SaleDiscountSettingV2
         Used By: Theme
     */
    class SaleDiscountSettingV2: Codable {
        public var saleBadgeBackground: String?

        public var saleBadgeText: String?

        public var saleDiscountText: String?

        public var saleTimer: String?

        public enum CodingKeys: String, CodingKey {
            case saleBadgeBackground = "sale_badge_background"

            case saleBadgeText = "sale_badge_text"

            case saleDiscountText = "sale_discount_text"

            case saleTimer = "sale_timer"
        }

        public init(saleBadgeBackground: String? = nil, saleBadgeText: String? = nil, saleDiscountText: String? = nil, saleTimer: String? = nil) {
            self.saleBadgeBackground = saleBadgeBackground

            self.saleBadgeText = saleBadgeText

            self.saleDiscountText = saleDiscountText

            self.saleTimer = saleTimer
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                saleBadgeBackground = try container.decode(String.self, forKey: .saleBadgeBackground)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                saleBadgeText = try container.decode(String.self, forKey: .saleBadgeText)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                saleDiscountText = try container.decode(String.self, forKey: .saleDiscountText)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                saleTimer = try container.decode(String.self, forKey: .saleTimer)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(saleBadgeBackground, forKey: .saleBadgeBackground)

            try? container.encodeIfPresent(saleBadgeText, forKey: .saleBadgeText)

            try? container.encodeIfPresent(saleDiscountText, forKey: .saleDiscountText)

            try? container.encodeIfPresent(saleTimer, forKey: .saleTimer)
        }
    }
}
