

import Foundation
public extension ApplicationClient {
    /*
         Model: AvailablePageScreenPredicate
         Used By: Theme
     */
    class AvailablePageScreenPredicate: Codable {
        public var mobile: Bool?

        public var desktop: Bool?

        public var tablet: Bool?

        public enum CodingKeys: String, CodingKey {
            case mobile

            case desktop

            case tablet
        }

        public init(desktop: Bool? = nil, mobile: Bool? = nil, tablet: Bool? = nil) {
            self.mobile = mobile

            self.desktop = desktop

            self.tablet = tablet
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                mobile = try container.decode(Bool.self, forKey: .mobile)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                desktop = try container.decode(Bool.self, forKey: .desktop)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                tablet = try container.decode(Bool.self, forKey: .tablet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(desktop, forKey: .desktop)

            try? container.encodeIfPresent(tablet, forKey: .tablet)
        }
    }
}
