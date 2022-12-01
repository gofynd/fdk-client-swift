

import Foundation
public extension ApplicationClient {
    /*
         Model: BagReasons1
         Used By: Order
     */
    class BagReasons1: Codable {
        public var qcType: [String]?

        public var displayName: String?

        public var id: Int?

        public var questionSet: [QuestionSet]?

        public enum CodingKeys: String, CodingKey {
            case qcType = "qc_type"

            case displayName = "display_name"

            case id

            case questionSet = "question_set"
        }

        public init(displayName: String? = nil, id: Int? = nil, qcType: [String]? = nil, questionSet: [QuestionSet]? = nil) {
            self.qcType = qcType

            self.displayName = displayName

            self.id = id

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
                displayName = try container.decode(String.self, forKey: .displayName)

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
                questionSet = try container.decode([QuestionSet].self, forKey: .questionSet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(qcType, forKey: .qcType)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(questionSet, forKey: .questionSet)
        }
    }
}
