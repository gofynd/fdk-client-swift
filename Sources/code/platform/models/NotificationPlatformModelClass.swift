

import Foundation
public extension PlatformClient {
    /*
         Model: Notification
         Used By: Communication
     */

    class Notification: Codable {
        public var title: String?

        public var body: String?

        public var subtitle: String?

        public var icon: String?

        public var deeplink: String?

        public var clickAction: String?

        public enum CodingKeys: String, CodingKey {
            case title

            case body

            case subtitle

            case icon

            case deeplink

            case clickAction = "click_action"
        }

        public init(body: String? = nil, clickAction: String? = nil, deeplink: String? = nil, icon: String? = nil, subtitle: String? = nil, title: String? = nil) {
            self.title = title

            self.body = body

            self.subtitle = subtitle

            self.icon = icon

            self.deeplink = deeplink

            self.clickAction = clickAction
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                title = try container.decode(String.self, forKey: .title)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                body = try container.decode(String.self, forKey: .body)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                subtitle = try container.decode(String.self, forKey: .subtitle)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                icon = try container.decode(String.self, forKey: .icon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                deeplink = try container.decode(String.self, forKey: .deeplink)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                clickAction = try container.decode(String.self, forKey: .clickAction)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(body, forKey: .body)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encodeIfPresent(icon, forKey: .icon)

            try? container.encodeIfPresent(deeplink, forKey: .deeplink)

            try? container.encodeIfPresent(clickAction, forKey: .clickAction)
        }
    }
}
