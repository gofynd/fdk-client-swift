

import Foundation
public extension ApplicationClient {
    /*
         Model: ReviewRating
         Used By: Feedback
     */
    class ReviewRating: Codable {
        public var attributes: [AttributeObject]?

        public var value: Double?

        public enum CodingKeys: String, CodingKey {
            case attributes

            case value
        }

        public init(attributes: [AttributeObject]? = nil, value: Double? = nil) {
            self.attributes = attributes

            self.value = value
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                attributes = try container.decode([AttributeObject].self, forKey: .attributes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                value = try container.decode(Double.self, forKey: .value)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(attributes, forKey: .attributes)

            try? container.encodeIfPresent(value, forKey: .value)
        }
    }
}
