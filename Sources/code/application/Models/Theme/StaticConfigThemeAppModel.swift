

import Foundation
public extension ApplicationClient.Theme {
    /*
         Model: StaticConfig
         Used By: Theme
     */
    class StaticConfig: Codable {
        public var props: StaticProps?

        public enum CodingKeys: String, CodingKey {
            case props
        }

        public init(props: StaticProps? = nil) {
            self.props = props
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                props = try container.decode(StaticProps.self, forKey: .props)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(props, forKey: .props)
        }
    }
}
