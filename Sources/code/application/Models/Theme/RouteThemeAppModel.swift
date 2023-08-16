

import Foundation
public extension ApplicationClient.Theme {
    /*
         Model: Route
         Used By: Theme
     */
    class Route: Codable {
        public var selected: String?

        public var exactUrl: String?

        public enum CodingKeys: String, CodingKey {
            case selected

            case exactUrl = "exact_url"
        }

        public init(exactUrl: String? = nil, selected: String? = nil) {
            self.selected = selected

            self.exactUrl = exactUrl
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                selected = try container.decode(String.self, forKey: .selected)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                exactUrl = try container.decode(String.self, forKey: .exactUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(selected, forKey: .selected)

            try? container.encodeIfPresent(exactUrl, forKey: .exactUrl)
        }
    }
}
