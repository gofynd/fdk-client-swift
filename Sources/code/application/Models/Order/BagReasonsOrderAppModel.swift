

import Foundation
public extension ApplicationClient.Order {
    /*
         Model: BagReasons
         Used By: Order
     */
    class BagReasons: Codable {
        public var displayName: String?

        public var qcType: [String]?

        public var meta: BagReasonMeta?

        public var reasons: [BagReasons]?

        public var questionSet: [QuestionSet]?

        public var id: Int?

        public enum CodingKeys: String, CodingKey {
            case displayName = "display_name"

            case qcType = "qc_type"

            case meta

            case reasons

            case questionSet = "question_set"

            case id
        }

        public init(displayName: String? = nil, id: Int? = nil, meta: BagReasonMeta? = nil, qcType: [String]? = nil, questionSet: [QuestionSet]? = nil, reasons: [BagReasons]? = nil) {
            self.displayName = displayName

            self.qcType = qcType

            self.meta = meta

            self.reasons = reasons

            self.questionSet = questionSet

            self.id = id
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                displayName = try container.decode(String.self, forKey: .displayName)

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
                meta = try container.decode(BagReasonMeta.self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                reasons = try container.decode([BagReasons].self, forKey: .reasons)

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

            do {
                id = try container.decode(Int.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(qcType, forKey: .qcType)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(reasons, forKey: .reasons)

            try? container.encodeIfPresent(questionSet, forKey: .questionSet)

            try? container.encodeIfPresent(id, forKey: .id)
        }
    }
}
