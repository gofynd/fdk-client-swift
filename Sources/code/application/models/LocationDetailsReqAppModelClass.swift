

import Foundation
public extension ApplicationClient {
    /*
         Model: LocationDetailsReq
         Used By: Logistic
     */
    class LocationDetailsReq: Codable {
        public var fromPincode: String?

        public var articles: [TatReqProductArticles]?

        public var fulfillmentId: Int?

        public enum CodingKeys: String, CodingKey {
            case fromPincode = "from_pincode"

            case articles

            case fulfillmentId = "fulfillment_id"
        }

        public init(articles: [TatReqProductArticles]? = nil, fromPincode: String? = nil, fulfillmentId: Int? = nil) {
            self.fromPincode = fromPincode

            self.articles = articles

            self.fulfillmentId = fulfillmentId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                fromPincode = try container.decode(String.self, forKey: .fromPincode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                articles = try container.decode([TatReqProductArticles].self, forKey: .articles)

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

            try? container.encodeIfPresent(fromPincode, forKey: .fromPincode)

            try? container.encodeIfPresent(articles, forKey: .articles)

            try? container.encodeIfPresent(fulfillmentId, forKey: .fulfillmentId)
        }
    }
}
