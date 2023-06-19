

import Foundation
public extension ApplicationClient.Theme {
    /*
         Model: GeneralSettingV2
         Used By: Theme
     */
    class GeneralSettingV2: Codable {
        public var theme: ThemeSettingV2?

        public var text: TextSettingV2?

        public var button: ButtonSettingV2?

        public var saleDiscount: SaleDiscountSettingV2?

        public var header: HeaderSettingV2?

        public var footer: FooterSettingV2?

        public enum CodingKeys: String, CodingKey {
            case theme

            case text

            case button

            case saleDiscount = "sale_discount"

            case header

            case footer
        }

        public init(button: ButtonSettingV2? = nil, footer: FooterSettingV2? = nil, header: HeaderSettingV2? = nil, saleDiscount: SaleDiscountSettingV2? = nil, text: TextSettingV2? = nil, theme: ThemeSettingV2? = nil) {
            self.theme = theme

            self.text = text

            self.button = button

            self.saleDiscount = saleDiscount

            self.header = header

            self.footer = footer
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                theme = try container.decode(ThemeSettingV2.self, forKey: .theme)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                text = try container.decode(TextSettingV2.self, forKey: .text)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                button = try container.decode(ButtonSettingV2.self, forKey: .button)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                saleDiscount = try container.decode(SaleDiscountSettingV2.self, forKey: .saleDiscount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                header = try container.decode(HeaderSettingV2.self, forKey: .header)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                footer = try container.decode(FooterSettingV2.self, forKey: .footer)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(theme, forKey: .theme)

            try? container.encodeIfPresent(text, forKey: .text)

            try? container.encodeIfPresent(button, forKey: .button)

            try? container.encodeIfPresent(saleDiscount, forKey: .saleDiscount)

            try? container.encodeIfPresent(header, forKey: .header)

            try? container.encodeIfPresent(footer, forKey: .footer)
        }
    }
}
