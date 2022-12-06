

import Foundation
public extension ApplicationClient {
    /*
         Model: BagReasons
         Used By: Order
     */
    class BagReasons: Codable {
        public var questionSet: [QuestionSet]?

        public var id: Int?

        public var qcType: [String]?

        public var displayName: String?

        public enum CodingKeys: String, CodingKey {
            case questionSet = "question_set"

            case id

            case qcType = "qc_type"

            case displayName = "display_name"
        }

        public init(displayName: String? = nil, id: Int? = nil, qcType: [String]? = nil, questionSet: [QuestionSet]? = nil) {
            self.questionSet = questionSet

            self.id = id

            self.qcType = qcType

            self.displayName = displayName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                questionSet = try container.decode([QuestionSet].self, forKey: .questionSet)

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
                qcType = try container.decode([String].self, forKey: .qcType)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(questionSet, forKey: .questionSet)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(qcType, forKey: .qcType)

            try? container.encodeIfPresent(displayName, forKey: .displayName)
        }
    }
}
