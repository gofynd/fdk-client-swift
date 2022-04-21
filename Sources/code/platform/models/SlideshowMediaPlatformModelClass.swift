

import Foundation
public extension PlatformClient {
    /*
         Model: SlideshowMedia
         Used By: Content
     */

    class SlideshowMedia: Codable {
        public var type: String?

        public var url: String?

        public var bgColor: String?

        public var duration: Int?

        public var autoDecideDuration: Bool?

        public var action: Action?

        public enum CodingKeys: String, CodingKey {
            case type

            case url

            case bgColor = "bg_color"

            case duration

            case autoDecideDuration = "auto_decide_duration"

            case action
        }

        public init(action: Action? = nil, autoDecideDuration: Bool? = nil, bgColor: String? = nil, duration: Int? = nil, type: String? = nil, url: String? = nil) {
            self.type = type

            self.url = url

            self.bgColor = bgColor

            self.duration = duration

            self.autoDecideDuration = autoDecideDuration

            self.action = action
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                url = try container.decode(String.self, forKey: .url)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                bgColor = try container.decode(String.self, forKey: .bgColor)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                duration = try container.decode(Int.self, forKey: .duration)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                autoDecideDuration = try container.decode(Bool.self, forKey: .autoDecideDuration)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                action = try container.decode(Action.self, forKey: .action)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(url, forKey: .url)

            try? container.encodeIfPresent(bgColor, forKey: .bgColor)

            try? container.encodeIfPresent(duration, forKey: .duration)

            try? container.encodeIfPresent(autoDecideDuration, forKey: .autoDecideDuration)

            try? container.encodeIfPresent(action, forKey: .action)
        }
    }
}
