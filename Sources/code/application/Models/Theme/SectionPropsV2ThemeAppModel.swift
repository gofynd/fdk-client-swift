

import Foundation
public extension ApplicationClient.Theme {
    /*
         Model: SectionPropsV2
         Used By: Theme
     */
    class SectionPropsV2: Codable {
        public var title: TextPropV2?

        public var itemMargin: TextPropV2?

        public var autoplay: CheckboxPropV2?

        public var slideInterval: RangePropV2?

        public enum CodingKeys: String, CodingKey {
            case title

            case itemMargin = "item_margin"

            case autoplay

            case slideInterval = "slide_interval"
        }

        public init(autoplay: CheckboxPropV2? = nil, itemMargin: TextPropV2? = nil, slideInterval: RangePropV2? = nil, title: TextPropV2? = nil) {
            self.title = title

            self.itemMargin = itemMargin

            self.autoplay = autoplay

            self.slideInterval = slideInterval
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                title = try container.decode(TextPropV2.self, forKey: .title)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemMargin = try container.decode(TextPropV2.self, forKey: .itemMargin)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                autoplay = try container.decode(CheckboxPropV2.self, forKey: .autoplay)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                slideInterval = try container.decode(RangePropV2.self, forKey: .slideInterval)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(itemMargin, forKey: .itemMargin)

            try? container.encodeIfPresent(autoplay, forKey: .autoplay)

            try? container.encodeIfPresent(slideInterval, forKey: .slideInterval)
        }
    }
}
