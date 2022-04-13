import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: StatsGroupComponents
         Used By: Analytics
     */

    class StatsGroupComponents: Codable {
        public var title: String?

        public var components: [StatsGroupComponent]?

        public enum CodingKeys: String, CodingKey {
            case title

            case components
        }

        public init(components: [StatsGroupComponent]?, title: String?) {
            self.title = title

            self.components = components
        }

        public func duplicate() -> StatsGroupComponents {
            let dict = self.dictionary!
            let copy = StatsGroupComponents(dictionary: dict)!
            return copy
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
                components = try container.decode([StatsGroupComponent].self, forKey: .components)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(components, forKey: .components)
        }
    }
}
