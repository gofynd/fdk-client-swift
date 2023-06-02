

import Foundation
public extension ApplicationClient.Logistic {
    /*
         Model: TATLocationDetailsRequest
         Used By: Logistic
     */
    class TATLocationDetailsRequest: Codable {
        public var articles: [TATArticlesRequest]?

        public var fromPincode: String?

        public var fulfillmentId: Int?

        public enum CodingKeys: String, CodingKey {
            case articles

            case fromPincode = "from_pincode"

            case fulfillmentId = "fulfillment_id"
        }

        public init(articles: [TATArticlesRequest]? = nil, fromPincode: String? = nil, fulfillmentId: Int? = nil) {
            self.articles = articles

            self.fromPincode = fromPincode

            self.fulfillmentId = fulfillmentId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                articles = try container.decode([TATArticlesRequest].self, forKey: .articles)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                fromPincode = try container.decode(String.self, forKey: .fromPincode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                fulfillmentId = try container.decode(Int.self, forKey: .fulfillmentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(articles, forKey: .articles)

            try? container.encodeIfPresent(fromPincode, forKey: .fromPincode)

            try? container.encodeIfPresent(fulfillmentId, forKey: .fulfillmentId)
        }
    }
}
