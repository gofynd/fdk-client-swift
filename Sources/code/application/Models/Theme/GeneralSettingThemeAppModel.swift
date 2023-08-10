

import Foundation
public extension ApplicationClient.Theme {
    /*
         Model: GeneralSetting
         Used By: Theme
     */
    class GeneralSetting: Codable {
        public var theme: ThemeSetting?

        public var text: TextSetting?

        public var button: ButtonSetting?

        public var saleDiscount: SaleDiscountSetting?

        public var header: HeaderSetting?

        public var footer: FooterSetting?

        public enum CodingKeys: String, CodingKey {
            case theme

            case text

            case button

            case saleDiscount = "sale_discount"

            case header

            case footer
        }

        public init(button: ButtonSetting? = nil, footer: FooterSetting? = nil, header: HeaderSetting? = nil, saleDiscount: SaleDiscountSetting? = nil, text: TextSetting? = nil, theme: ThemeSetting? = nil) {
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
                theme = try container.decode(ThemeSetting.self, forKey: .theme)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                text = try container.decode(TextSetting.self, forKey: .text)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                button = try container.decode(ButtonSetting.self, forKey: .button)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                saleDiscount = try container.decode(SaleDiscountSetting.self, forKey: .saleDiscount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                header = try container.decode(HeaderSetting.self, forKey: .header)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                footer = try container.decode(FooterSetting.self, forKey: .footer)

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
