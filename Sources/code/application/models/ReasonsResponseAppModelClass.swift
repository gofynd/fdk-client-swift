

import Foundation
public extension ApplicationClient {
    /*
         Model: ReasonsResponse
         Used By: Order
     */
    class ReasonsResponse: Codable {
        public var qcType: [String]?

        public var id: Int?

        public var displayName: String?

        public var questionSet: [QuestionSet]?

        public enum CodingKeys: String, CodingKey {
            case qcType = "qc_type"

            case id

            case displayName = "display_name"

            case questionSet = "question_set"
        }

        public init(displayName: String? = nil, id: Int? = nil, qcType: [String]? = nil, questionSet: [QuestionSet]? = nil) {
            self.qcType = qcType

            self.id = id

            self.displayName = displayName

            self.questionSet = questionSet
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                qcType = try container.decode([String].self, forKey: .qcType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(Int.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                displayName = try container.decode(String.self, forKey: .displayName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                questionSet = try container.decode([QuestionSet].self, forKey: .questionSet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(qcType, forKey: .qcType)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(questionSet, forKey: .questionSet)
        }
    }
}
