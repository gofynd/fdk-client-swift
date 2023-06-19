

import Foundation

public extension PlatformClient.Theme {
    /*
         Model: BlockPropsV2
         Used By: Theme
     */

    class BlockPropsV2: Codable {
        public var image: ImagePickerPropV2?

        public var slideLink: UrlPropV2?

        public enum CodingKeys: String, CodingKey {
            case image

            case slideLink = "slide_link"
        }

        public init(image: ImagePickerPropV2? = nil, slideLink: UrlPropV2? = nil) {
            self.image = image

            self.slideLink = slideLink
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                image = try container.decode(ImagePickerPropV2.self, forKey: .image)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                slideLink = try container.decode(UrlPropV2.self, forKey: .slideLink)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(image, forKey: .image)

            try? container.encodeIfPresent(slideLink, forKey: .slideLink)
        }
    }
}

public extension PlatformClient.ApplicationClient.Theme {
    /*
         Model: BlockPropsV2
         Used By: Theme
     */

    class BlockPropsV2: Codable {
        public var image: ImagePickerPropV2?

        public var slideLink: UrlPropV2?

        public enum CodingKeys: String, CodingKey {
            case image

            case slideLink = "slide_link"
        }

        public init(image: ImagePickerPropV2? = nil, slideLink: UrlPropV2? = nil) {
            self.image = image

            self.slideLink = slideLink
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                image = try container.decode(ImagePickerPropV2.self, forKey: .image)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                slideLink = try container.decode(UrlPropV2.self, forKey: .slideLink)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(image, forKey: .image)

            try? container.encodeIfPresent(slideLink, forKey: .slideLink)
        }
    }
}
