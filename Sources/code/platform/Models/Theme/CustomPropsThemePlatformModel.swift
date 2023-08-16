

import Foundation

public extension PlatformClient.Theme {
    /*
         Model: CustomProps
         Used By: Theme
     */

    class CustomProps: Codable {
        public var headerBgColor: String?

        public var headerTextColor: String?

        public var headerBorderColor: String?

        public var headerIconColor: String?

        public var headerCartNotificationBgColor: String?

        public var headerCartNotificationTextColor: String?

        public var headerNavHoverColor: String?

        public var buttonPrimaryColor: String?

        public var buttonPrimaryLabelColor: String?

        public var buttonAddToCartColor: String?

        public var buttonAddToCartLabelColor: String?

        public var buttonSecondaryColor: String?

        public var buttonSecondaryLabelColor: String?

        public var buttonTertiaryColor: String?

        public var buttonTertiaryLabelColor: String?

        public var buttonTertiaryHoverColor: String?

        public var buttonTertiaryHoverTextColor: String?

        public var textHeadingLinkColor: String?

        public var textBodyColor: String?

        public var textPriceColor: String?

        public var textSalePriceColor: String?

        public var textStrikethroughPriceColor: String?

        public var textDiscountColor: String?

        public var footerBgColor: String?

        public var footerTextColor: String?

        public var footerBorderColor: String?

        public var footerNavHoverColor: String?

        public var disableCart: Bool?

        public var isMenuBelowLogo: Bool?

        public var menuPosition: String?

        public enum CodingKeys: String, CodingKey {
            case headerBgColor = "header_bg_color"

            case headerTextColor = "header_text_color"

            case headerBorderColor = "header_border_color"

            case headerIconColor = "header_icon_color"

            case headerCartNotificationBgColor = "header_cart_notification_bg_color"

            case headerCartNotificationTextColor = "header_cart_notification_text_color"

            case headerNavHoverColor = "header_nav_hover_color"

            case buttonPrimaryColor = "button_primary_color"

            case buttonPrimaryLabelColor = "button_primary_label_color"

            case buttonAddToCartColor = "button_add_to_cart_color"

            case buttonAddToCartLabelColor = "button_add_to_cart_label_color"

            case buttonSecondaryColor = "button_secondary_color"

            case buttonSecondaryLabelColor = "button_secondary_label_color"

            case buttonTertiaryColor = "button_tertiary_color"

            case buttonTertiaryLabelColor = "button_tertiary_label_color"

            case buttonTertiaryHoverColor = "button_tertiary_hover_color"

            case buttonTertiaryHoverTextColor = "button_tertiary_hover_text_color"

            case textHeadingLinkColor = "text_heading_link_color"

            case textBodyColor = "text_body_color"

            case textPriceColor = "text_price_color"

            case textSalePriceColor = "text_sale_price_color"

            case textStrikethroughPriceColor = "text_strikethrough_price_color"

            case textDiscountColor = "text_discount_color"

            case footerBgColor = "footer_bg_color"

            case footerTextColor = "footer_text_color"

            case footerBorderColor = "footer_border_color"

            case footerNavHoverColor = "footer_nav_hover_color"

            case disableCart = "disable_cart"

            case isMenuBelowLogo = "is_menu_below_logo"

            case menuPosition = "menu_position"
        }

        public init(buttonAddToCartColor: String? = nil, buttonAddToCartLabelColor: String? = nil, buttonPrimaryColor: String? = nil, buttonPrimaryLabelColor: String? = nil, buttonSecondaryColor: String? = nil, buttonSecondaryLabelColor: String? = nil, buttonTertiaryColor: String? = nil, buttonTertiaryHoverColor: String? = nil, buttonTertiaryHoverTextColor: String? = nil, buttonTertiaryLabelColor: String? = nil, disableCart: Bool? = nil, footerBgColor: String? = nil, footerBorderColor: String? = nil, footerNavHoverColor: String? = nil, footerTextColor: String? = nil, headerBgColor: String? = nil, headerBorderColor: String? = nil, headerCartNotificationBgColor: String? = nil, headerCartNotificationTextColor: String? = nil, headerIconColor: String? = nil, headerNavHoverColor: String? = nil, headerTextColor: String? = nil, isMenuBelowLogo: Bool? = nil, menuPosition: String? = nil, textBodyColor: String? = nil, textDiscountColor: String? = nil, textHeadingLinkColor: String? = nil, textPriceColor: String? = nil, textSalePriceColor: String? = nil, textStrikethroughPriceColor: String? = nil) {
            self.headerBgColor = headerBgColor

            self.headerTextColor = headerTextColor

            self.headerBorderColor = headerBorderColor

            self.headerIconColor = headerIconColor

            self.headerCartNotificationBgColor = headerCartNotificationBgColor

            self.headerCartNotificationTextColor = headerCartNotificationTextColor

            self.headerNavHoverColor = headerNavHoverColor

            self.buttonPrimaryColor = buttonPrimaryColor

            self.buttonPrimaryLabelColor = buttonPrimaryLabelColor

            self.buttonAddToCartColor = buttonAddToCartColor

            self.buttonAddToCartLabelColor = buttonAddToCartLabelColor

            self.buttonSecondaryColor = buttonSecondaryColor

            self.buttonSecondaryLabelColor = buttonSecondaryLabelColor

            self.buttonTertiaryColor = buttonTertiaryColor

            self.buttonTertiaryLabelColor = buttonTertiaryLabelColor

            self.buttonTertiaryHoverColor = buttonTertiaryHoverColor

            self.buttonTertiaryHoverTextColor = buttonTertiaryHoverTextColor

            self.textHeadingLinkColor = textHeadingLinkColor

            self.textBodyColor = textBodyColor

            self.textPriceColor = textPriceColor

            self.textSalePriceColor = textSalePriceColor

            self.textStrikethroughPriceColor = textStrikethroughPriceColor

            self.textDiscountColor = textDiscountColor

            self.footerBgColor = footerBgColor

            self.footerTextColor = footerTextColor

            self.footerBorderColor = footerBorderColor

            self.footerNavHoverColor = footerNavHoverColor

            self.disableCart = disableCart

            self.isMenuBelowLogo = isMenuBelowLogo

            self.menuPosition = menuPosition
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                headerBgColor = try container.decode(String.self, forKey: .headerBgColor)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                headerTextColor = try container.decode(String.self, forKey: .headerTextColor)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                headerBorderColor = try container.decode(String.self, forKey: .headerBorderColor)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                headerIconColor = try container.decode(String.self, forKey: .headerIconColor)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                headerCartNotificationBgColor = try container.decode(String.self, forKey: .headerCartNotificationBgColor)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                headerCartNotificationTextColor = try container.decode(String.self, forKey: .headerCartNotificationTextColor)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                headerNavHoverColor = try container.decode(String.self, forKey: .headerNavHoverColor)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                buttonPrimaryColor = try container.decode(String.self, forKey: .buttonPrimaryColor)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                buttonPrimaryLabelColor = try container.decode(String.self, forKey: .buttonPrimaryLabelColor)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                buttonAddToCartColor = try container.decode(String.self, forKey: .buttonAddToCartColor)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                buttonAddToCartLabelColor = try container.decode(String.self, forKey: .buttonAddToCartLabelColor)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                buttonSecondaryColor = try container.decode(String.self, forKey: .buttonSecondaryColor)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                buttonSecondaryLabelColor = try container.decode(String.self, forKey: .buttonSecondaryLabelColor)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                buttonTertiaryColor = try container.decode(String.self, forKey: .buttonTertiaryColor)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                buttonTertiaryLabelColor = try container.decode(String.self, forKey: .buttonTertiaryLabelColor)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                buttonTertiaryHoverColor = try container.decode(String.self, forKey: .buttonTertiaryHoverColor)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                buttonTertiaryHoverTextColor = try container.decode(String.self, forKey: .buttonTertiaryHoverTextColor)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                textHeadingLinkColor = try container.decode(String.self, forKey: .textHeadingLinkColor)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                textBodyColor = try container.decode(String.self, forKey: .textBodyColor)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                textPriceColor = try container.decode(String.self, forKey: .textPriceColor)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                textSalePriceColor = try container.decode(String.self, forKey: .textSalePriceColor)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                textStrikethroughPriceColor = try container.decode(String.self, forKey: .textStrikethroughPriceColor)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                textDiscountColor = try container.decode(String.self, forKey: .textDiscountColor)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                footerBgColor = try container.decode(String.self, forKey: .footerBgColor)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                footerTextColor = try container.decode(String.self, forKey: .footerTextColor)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                footerBorderColor = try container.decode(String.self, forKey: .footerBorderColor)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                footerNavHoverColor = try container.decode(String.self, forKey: .footerNavHoverColor)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                disableCart = try container.decode(Bool.self, forKey: .disableCart)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isMenuBelowLogo = try container.decode(Bool.self, forKey: .isMenuBelowLogo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                menuPosition = try container.decode(String.self, forKey: .menuPosition)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(headerBgColor, forKey: .headerBgColor)

            try? container.encodeIfPresent(headerTextColor, forKey: .headerTextColor)

            try? container.encodeIfPresent(headerBorderColor, forKey: .headerBorderColor)

            try? container.encodeIfPresent(headerIconColor, forKey: .headerIconColor)

            try? container.encodeIfPresent(headerCartNotificationBgColor, forKey: .headerCartNotificationBgColor)

            try? container.encodeIfPresent(headerCartNotificationTextColor, forKey: .headerCartNotificationTextColor)

            try? container.encodeIfPresent(headerNavHoverColor, forKey: .headerNavHoverColor)

            try? container.encodeIfPresent(buttonPrimaryColor, forKey: .buttonPrimaryColor)

            try? container.encodeIfPresent(buttonPrimaryLabelColor, forKey: .buttonPrimaryLabelColor)

            try? container.encodeIfPresent(buttonAddToCartColor, forKey: .buttonAddToCartColor)

            try? container.encodeIfPresent(buttonAddToCartLabelColor, forKey: .buttonAddToCartLabelColor)

            try? container.encodeIfPresent(buttonSecondaryColor, forKey: .buttonSecondaryColor)

            try? container.encodeIfPresent(buttonSecondaryLabelColor, forKey: .buttonSecondaryLabelColor)

            try? container.encodeIfPresent(buttonTertiaryColor, forKey: .buttonTertiaryColor)

            try? container.encodeIfPresent(buttonTertiaryLabelColor, forKey: .buttonTertiaryLabelColor)

            try? container.encodeIfPresent(buttonTertiaryHoverColor, forKey: .buttonTertiaryHoverColor)

            try? container.encodeIfPresent(buttonTertiaryHoverTextColor, forKey: .buttonTertiaryHoverTextColor)

            try? container.encodeIfPresent(textHeadingLinkColor, forKey: .textHeadingLinkColor)

            try? container.encodeIfPresent(textBodyColor, forKey: .textBodyColor)

            try? container.encodeIfPresent(textPriceColor, forKey: .textPriceColor)

            try? container.encodeIfPresent(textSalePriceColor, forKey: .textSalePriceColor)

            try? container.encodeIfPresent(textStrikethroughPriceColor, forKey: .textStrikethroughPriceColor)

            try? container.encodeIfPresent(textDiscountColor, forKey: .textDiscountColor)

            try? container.encodeIfPresent(footerBgColor, forKey: .footerBgColor)

            try? container.encodeIfPresent(footerTextColor, forKey: .footerTextColor)

            try? container.encodeIfPresent(footerBorderColor, forKey: .footerBorderColor)

            try? container.encodeIfPresent(footerNavHoverColor, forKey: .footerNavHoverColor)

            try? container.encodeIfPresent(disableCart, forKey: .disableCart)

            try? container.encodeIfPresent(isMenuBelowLogo, forKey: .isMenuBelowLogo)

            try? container.encodeIfPresent(menuPosition, forKey: .menuPosition)
        }
    }
}

public extension PlatformClient.ApplicationClient.Theme {
    /*
         Model: CustomProps
         Used By: Theme
     */

    class CustomProps: Codable {
        public var headerBgColor: String?

        public var headerTextColor: String?

        public var headerBorderColor: String?

        public var headerIconColor: String?

        public var headerCartNotificationBgColor: String?

        public var headerCartNotificationTextColor: String?

        public var headerNavHoverColor: String?

        public var buttonPrimaryColor: String?

        public var buttonPrimaryLabelColor: String?

        public var buttonAddToCartColor: String?

        public var buttonAddToCartLabelColor: String?

        public var buttonSecondaryColor: String?

        public var buttonSecondaryLabelColor: String?

        public var buttonTertiaryColor: String?

        public var buttonTertiaryLabelColor: String?

        public var buttonTertiaryHoverColor: String?

        public var buttonTertiaryHoverTextColor: String?

        public var textHeadingLinkColor: String?

        public var textBodyColor: String?

        public var textPriceColor: String?

        public var textSalePriceColor: String?

        public var textStrikethroughPriceColor: String?

        public var textDiscountColor: String?

        public var footerBgColor: String?

        public var footerTextColor: String?

        public var footerBorderColor: String?

        public var footerNavHoverColor: String?

        public var disableCart: Bool?

        public var isMenuBelowLogo: Bool?

        public var menuPosition: String?

        public enum CodingKeys: String, CodingKey {
            case headerBgColor = "header_bg_color"

            case headerTextColor = "header_text_color"

            case headerBorderColor = "header_border_color"

            case headerIconColor = "header_icon_color"

            case headerCartNotificationBgColor = "header_cart_notification_bg_color"

            case headerCartNotificationTextColor = "header_cart_notification_text_color"

            case headerNavHoverColor = "header_nav_hover_color"

            case buttonPrimaryColor = "button_primary_color"

            case buttonPrimaryLabelColor = "button_primary_label_color"

            case buttonAddToCartColor = "button_add_to_cart_color"

            case buttonAddToCartLabelColor = "button_add_to_cart_label_color"

            case buttonSecondaryColor = "button_secondary_color"

            case buttonSecondaryLabelColor = "button_secondary_label_color"

            case buttonTertiaryColor = "button_tertiary_color"

            case buttonTertiaryLabelColor = "button_tertiary_label_color"

            case buttonTertiaryHoverColor = "button_tertiary_hover_color"

            case buttonTertiaryHoverTextColor = "button_tertiary_hover_text_color"

            case textHeadingLinkColor = "text_heading_link_color"

            case textBodyColor = "text_body_color"

            case textPriceColor = "text_price_color"

            case textSalePriceColor = "text_sale_price_color"

            case textStrikethroughPriceColor = "text_strikethrough_price_color"

            case textDiscountColor = "text_discount_color"

            case footerBgColor = "footer_bg_color"

            case footerTextColor = "footer_text_color"

            case footerBorderColor = "footer_border_color"

            case footerNavHoverColor = "footer_nav_hover_color"

            case disableCart = "disable_cart"

            case isMenuBelowLogo = "is_menu_below_logo"

            case menuPosition = "menu_position"
        }

        public init(buttonAddToCartColor: String? = nil, buttonAddToCartLabelColor: String? = nil, buttonPrimaryColor: String? = nil, buttonPrimaryLabelColor: String? = nil, buttonSecondaryColor: String? = nil, buttonSecondaryLabelColor: String? = nil, buttonTertiaryColor: String? = nil, buttonTertiaryHoverColor: String? = nil, buttonTertiaryHoverTextColor: String? = nil, buttonTertiaryLabelColor: String? = nil, disableCart: Bool? = nil, footerBgColor: String? = nil, footerBorderColor: String? = nil, footerNavHoverColor: String? = nil, footerTextColor: String? = nil, headerBgColor: String? = nil, headerBorderColor: String? = nil, headerCartNotificationBgColor: String? = nil, headerCartNotificationTextColor: String? = nil, headerIconColor: String? = nil, headerNavHoverColor: String? = nil, headerTextColor: String? = nil, isMenuBelowLogo: Bool? = nil, menuPosition: String? = nil, textBodyColor: String? = nil, textDiscountColor: String? = nil, textHeadingLinkColor: String? = nil, textPriceColor: String? = nil, textSalePriceColor: String? = nil, textStrikethroughPriceColor: String? = nil) {
            self.headerBgColor = headerBgColor

            self.headerTextColor = headerTextColor

            self.headerBorderColor = headerBorderColor

            self.headerIconColor = headerIconColor

            self.headerCartNotificationBgColor = headerCartNotificationBgColor

            self.headerCartNotificationTextColor = headerCartNotificationTextColor

            self.headerNavHoverColor = headerNavHoverColor

            self.buttonPrimaryColor = buttonPrimaryColor

            self.buttonPrimaryLabelColor = buttonPrimaryLabelColor

            self.buttonAddToCartColor = buttonAddToCartColor

            self.buttonAddToCartLabelColor = buttonAddToCartLabelColor

            self.buttonSecondaryColor = buttonSecondaryColor

            self.buttonSecondaryLabelColor = buttonSecondaryLabelColor

            self.buttonTertiaryColor = buttonTertiaryColor

            self.buttonTertiaryLabelColor = buttonTertiaryLabelColor

            self.buttonTertiaryHoverColor = buttonTertiaryHoverColor

            self.buttonTertiaryHoverTextColor = buttonTertiaryHoverTextColor

            self.textHeadingLinkColor = textHeadingLinkColor

            self.textBodyColor = textBodyColor

            self.textPriceColor = textPriceColor

            self.textSalePriceColor = textSalePriceColor

            self.textStrikethroughPriceColor = textStrikethroughPriceColor

            self.textDiscountColor = textDiscountColor

            self.footerBgColor = footerBgColor

            self.footerTextColor = footerTextColor

            self.footerBorderColor = footerBorderColor

            self.footerNavHoverColor = footerNavHoverColor

            self.disableCart = disableCart

            self.isMenuBelowLogo = isMenuBelowLogo

            self.menuPosition = menuPosition
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                headerBgColor = try container.decode(String.self, forKey: .headerBgColor)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                headerTextColor = try container.decode(String.self, forKey: .headerTextColor)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                headerBorderColor = try container.decode(String.self, forKey: .headerBorderColor)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                headerIconColor = try container.decode(String.self, forKey: .headerIconColor)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                headerCartNotificationBgColor = try container.decode(String.self, forKey: .headerCartNotificationBgColor)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                headerCartNotificationTextColor = try container.decode(String.self, forKey: .headerCartNotificationTextColor)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                headerNavHoverColor = try container.decode(String.self, forKey: .headerNavHoverColor)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                buttonPrimaryColor = try container.decode(String.self, forKey: .buttonPrimaryColor)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                buttonPrimaryLabelColor = try container.decode(String.self, forKey: .buttonPrimaryLabelColor)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                buttonAddToCartColor = try container.decode(String.self, forKey: .buttonAddToCartColor)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                buttonAddToCartLabelColor = try container.decode(String.self, forKey: .buttonAddToCartLabelColor)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                buttonSecondaryColor = try container.decode(String.self, forKey: .buttonSecondaryColor)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                buttonSecondaryLabelColor = try container.decode(String.self, forKey: .buttonSecondaryLabelColor)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                buttonTertiaryColor = try container.decode(String.self, forKey: .buttonTertiaryColor)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                buttonTertiaryLabelColor = try container.decode(String.self, forKey: .buttonTertiaryLabelColor)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                buttonTertiaryHoverColor = try container.decode(String.self, forKey: .buttonTertiaryHoverColor)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                buttonTertiaryHoverTextColor = try container.decode(String.self, forKey: .buttonTertiaryHoverTextColor)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                textHeadingLinkColor = try container.decode(String.self, forKey: .textHeadingLinkColor)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                textBodyColor = try container.decode(String.self, forKey: .textBodyColor)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                textPriceColor = try container.decode(String.self, forKey: .textPriceColor)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                textSalePriceColor = try container.decode(String.self, forKey: .textSalePriceColor)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                textStrikethroughPriceColor = try container.decode(String.self, forKey: .textStrikethroughPriceColor)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                textDiscountColor = try container.decode(String.self, forKey: .textDiscountColor)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                footerBgColor = try container.decode(String.self, forKey: .footerBgColor)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                footerTextColor = try container.decode(String.self, forKey: .footerTextColor)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                footerBorderColor = try container.decode(String.self, forKey: .footerBorderColor)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                footerNavHoverColor = try container.decode(String.self, forKey: .footerNavHoverColor)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                disableCart = try container.decode(Bool.self, forKey: .disableCart)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isMenuBelowLogo = try container.decode(Bool.self, forKey: .isMenuBelowLogo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                menuPosition = try container.decode(String.self, forKey: .menuPosition)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(headerBgColor, forKey: .headerBgColor)

            try? container.encodeIfPresent(headerTextColor, forKey: .headerTextColor)

            try? container.encodeIfPresent(headerBorderColor, forKey: .headerBorderColor)

            try? container.encodeIfPresent(headerIconColor, forKey: .headerIconColor)

            try? container.encodeIfPresent(headerCartNotificationBgColor, forKey: .headerCartNotificationBgColor)

            try? container.encodeIfPresent(headerCartNotificationTextColor, forKey: .headerCartNotificationTextColor)

            try? container.encodeIfPresent(headerNavHoverColor, forKey: .headerNavHoverColor)

            try? container.encodeIfPresent(buttonPrimaryColor, forKey: .buttonPrimaryColor)

            try? container.encodeIfPresent(buttonPrimaryLabelColor, forKey: .buttonPrimaryLabelColor)

            try? container.encodeIfPresent(buttonAddToCartColor, forKey: .buttonAddToCartColor)

            try? container.encodeIfPresent(buttonAddToCartLabelColor, forKey: .buttonAddToCartLabelColor)

            try? container.encodeIfPresent(buttonSecondaryColor, forKey: .buttonSecondaryColor)

            try? container.encodeIfPresent(buttonSecondaryLabelColor, forKey: .buttonSecondaryLabelColor)

            try? container.encodeIfPresent(buttonTertiaryColor, forKey: .buttonTertiaryColor)

            try? container.encodeIfPresent(buttonTertiaryLabelColor, forKey: .buttonTertiaryLabelColor)

            try? container.encodeIfPresent(buttonTertiaryHoverColor, forKey: .buttonTertiaryHoverColor)

            try? container.encodeIfPresent(buttonTertiaryHoverTextColor, forKey: .buttonTertiaryHoverTextColor)

            try? container.encodeIfPresent(textHeadingLinkColor, forKey: .textHeadingLinkColor)

            try? container.encodeIfPresent(textBodyColor, forKey: .textBodyColor)

            try? container.encodeIfPresent(textPriceColor, forKey: .textPriceColor)

            try? container.encodeIfPresent(textSalePriceColor, forKey: .textSalePriceColor)

            try? container.encodeIfPresent(textStrikethroughPriceColor, forKey: .textStrikethroughPriceColor)

            try? container.encodeIfPresent(textDiscountColor, forKey: .textDiscountColor)

            try? container.encodeIfPresent(footerBgColor, forKey: .footerBgColor)

            try? container.encodeIfPresent(footerTextColor, forKey: .footerTextColor)

            try? container.encodeIfPresent(footerBorderColor, forKey: .footerBorderColor)

            try? container.encodeIfPresent(footerNavHoverColor, forKey: .footerNavHoverColor)

            try? container.encodeIfPresent(disableCart, forKey: .disableCart)

            try? container.encodeIfPresent(isMenuBelowLogo, forKey: .isMenuBelowLogo)

            try? container.encodeIfPresent(menuPosition, forKey: .menuPosition)
        }
    }
}
