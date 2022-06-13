

import Foundation
public extension PlatformClient {
    /*
         Model: CouponAdd
         Used By: Cart
     */

    class CouponAdd: Codable {
        public var displayMeta: DisplayMeta

        public var identifiers: Identifier

        public var dateMeta: CouponDateMeta?

        public var validity: Validity

        public var code: String

        public var rule: [Rule]

        public var state: State?

        public var schedule: CouponSchedule?

        public var typeSlug: String

        public var ruleDefinition: RuleDefinition

        public var action: CouponAction?

        public var ownership: Ownership

        public var validation: Validation?

        public var author: CouponAuthor?

        public var tags: [String]?

        public var restrictions: Restrictions?

        public enum CodingKeys: String, CodingKey {
            case displayMeta = "display_meta"

            case identifiers

            case dateMeta = "date_meta"

            case validity

            case code

            case rule

            case state

            case schedule = "_schedule"

            case typeSlug = "type_slug"

            case ruleDefinition = "rule_definition"

            case action

            case ownership

            case validation

            case author

            case tags

            case restrictions
        }

        public init(action: CouponAction? = nil, author: CouponAuthor? = nil, code: String, dateMeta: CouponDateMeta? = nil, displayMeta: DisplayMeta, identifiers: Identifier, ownership: Ownership, restrictions: Restrictions? = nil, rule: [Rule], ruleDefinition: RuleDefinition, state: State? = nil, tags: [String]? = nil, typeSlug: String, validation: Validation? = nil, validity: Validity, schedule: CouponSchedule? = nil) {
            self.displayMeta = displayMeta

            self.identifiers = identifiers

            self.dateMeta = dateMeta

            self.validity = validity

            self.code = code

            self.rule = rule

            self.state = state

            self.schedule = schedule

            self.typeSlug = typeSlug

            self.ruleDefinition = ruleDefinition

            self.action = action

            self.ownership = ownership

            self.validation = validation

            self.author = author

            self.tags = tags

            self.restrictions = restrictions
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            displayMeta = try container.decode(DisplayMeta.self, forKey: .displayMeta)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            do {
                dateMeta = try container.decode(CouponDateMeta.self, forKey: .dateMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            validity = try container.decode(Validity.self, forKey: .validity)

            code = try container.decode(String.self, forKey: .code)

            rule = try container.decode([Rule].self, forKey: .rule)

            do {
                state = try container.decode(State.self, forKey: .state)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                schedule = try container.decode(CouponSchedule.self, forKey: .schedule)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            typeSlug = try container.decode(String.self, forKey: .typeSlug)

            ruleDefinition = try container.decode(RuleDefinition.self, forKey: .ruleDefinition)

            do {
                action = try container.decode(CouponAction.self, forKey: .action)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            ownership = try container.decode(Ownership.self, forKey: .ownership)

            do {
                validation = try container.decode(Validation.self, forKey: .validation)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                author = try container.decode(CouponAuthor.self, forKey: .author)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                restrictions = try container.decode(Restrictions.self, forKey: .restrictions)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(displayMeta, forKey: .displayMeta)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(dateMeta, forKey: .dateMeta)

            try? container.encodeIfPresent(validity, forKey: .validity)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(rule, forKey: .rule)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(schedule, forKey: .schedule)

            try? container.encodeIfPresent(typeSlug, forKey: .typeSlug)

            try? container.encodeIfPresent(ruleDefinition, forKey: .ruleDefinition)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(ownership, forKey: .ownership)

            try? container.encodeIfPresent(validation, forKey: .validation)

            try? container.encodeIfPresent(author, forKey: .author)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(restrictions, forKey: .restrictions)
        }
    }
}
