

import Foundation

public extension PlatformClient.Theme {
    /*
         Model: Comments
         Used By: Theme
     */

    class Comments: Codable {
        public var developerRemark: String?

        public var reviewerFeedback: String?

        public enum CodingKeys: String, CodingKey {
            case developerRemark = "developer_remark"

            case reviewerFeedback = "reviewer_feedback"
        }

        public init(developerRemark: String? = nil, reviewerFeedback: String? = nil) {
            self.developerRemark = developerRemark

            self.reviewerFeedback = reviewerFeedback
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                developerRemark = try container.decode(String.self, forKey: .developerRemark)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                reviewerFeedback = try container.decode(String.self, forKey: .reviewerFeedback)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(developerRemark, forKey: .developerRemark)

            try? container.encodeIfPresent(reviewerFeedback, forKey: .reviewerFeedback)
        }
    }
}

public extension PlatformClient.ApplicationClient.Theme {
    /*
         Model: Comments
         Used By: Theme
     */

    class Comments: Codable {
        public var developerRemark: String?

        public var reviewerFeedback: String?

        public enum CodingKeys: String, CodingKey {
            case developerRemark = "developer_remark"

            case reviewerFeedback = "reviewer_feedback"
        }

        public init(developerRemark: String? = nil, reviewerFeedback: String? = nil) {
            self.developerRemark = developerRemark

            self.reviewerFeedback = reviewerFeedback
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                developerRemark = try container.decode(String.self, forKey: .developerRemark)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                reviewerFeedback = try container.decode(String.self, forKey: .reviewerFeedback)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(developerRemark, forKey: .developerRemark)

            try? container.encodeIfPresent(reviewerFeedback, forKey: .reviewerFeedback)
        }
    }
}
