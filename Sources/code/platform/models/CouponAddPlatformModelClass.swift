

import Foundation
public extension PlatformClient {
    /*
         Model: CouponAdd
         Used By: Cart
     */

    class CouponAdd: Codable {
        public var action: CouponAction?

        public var displayMeta: DisplayMeta

        public var tags: [String]?

        public var ruleDefinition: RuleDefinition

        public var author: CouponAuthor?

        public var validation: Validation?

        public var validity: Validity

        public var dateMeta: CouponDateMeta?

        public var typeSlug: String

        public var restrictions: Restrictions?

        public var rule: [Rule]

        public var schedule: CouponSchedule?

        public var identifiers: Identifier

        public var state: State?

        public var ownership: Ownership

        public var code: String

        public enum CodingKeys: String, CodingKey {
            case action

            case displayMeta = "display_meta"

            case tags

            case ruleDefinition = "rule_definition"

            case author

            case validation

            case validity

            case dateMeta = "date_meta"

            case typeSlug = "type_slug"

            case restrictions

            case rule

            case schedule = "_schedule"

            case identifiers

            case state

            case ownership

            case code
        }

        public init(action: CouponAction? = nil, author: CouponAuthor? = nil, code: String, dateMeta: CouponDateMeta? = nil, displayMeta: DisplayMeta, identifiers: Identifier, ownership: Ownership, restrictions: Restrictions? = nil, rule: [Rule], ruleDefinition: RuleDefinition, state: State? = nil, tags: [String]? = nil, typeSlug: String, validation: Validation? = nil, validity: Validity, schedule: CouponSchedule? = nil) {
            self.action = action

            self.displayMeta = displayMeta

            self.tags = tags

            self.ruleDefinition = ruleDefinition

            self.author = author

            self.validation = validation

            self.validity = validity

            self.dateMeta = dateMeta

            self.typeSlug = typeSlug

            self.restrictions = restrictions

            self.rule = rule

            self.schedule = schedule

            self.identifiers = identifiers

            self.state = state

            self.ownership = ownership

            self.code = code
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                action = try container.decode(CouponAction.self, forKey: .action)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            displayMeta = try container.decode(DisplayMeta.self, forKey: .displayMeta)

            do {
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            ruleDefinition = try container.decode(RuleDefinition.self, forKey: .ruleDefinition)

            do {
                author = try container.decode(CouponAuthor.self, forKey: .author)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                validation = try container.decode(Validation.self, forKey: .validation)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            validity = try container.decode(Validity.self, forKey: .validity)

            do {
                dateMeta = try container.decode(CouponDateMeta.self, forKey: .dateMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            typeSlug = try container.decode(String.self, forKey: .typeSlug)

            do {
                restrictions = try container.decode(Restrictions.self, forKey: .restrictions)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            rule = try container.decode([Rule].self, forKey: .rule)

            do {
                schedule = try container.decode(CouponSchedule.self, forKey: .schedule)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            do {
                state = try container.decode(State.self, forKey: .state)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            ownership = try container.decode(Ownership.self, forKey: .ownership)

            code = try container.decode(String.self, forKey: .code)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(displayMeta, forKey: .displayMeta)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(ruleDefinition, forKey: .ruleDefinition)

            try? container.encodeIfPresent(author, forKey: .author)

            try? container.encodeIfPresent(validation, forKey: .validation)

            try? container.encodeIfPresent(validity, forKey: .validity)

            try? container.encodeIfPresent(dateMeta, forKey: .dateMeta)

            try? container.encodeIfPresent(typeSlug, forKey: .typeSlug)

            try? container.encodeIfPresent(restrictions, forKey: .restrictions)

            try? container.encodeIfPresent(rule, forKey: .rule)

            try? container.encodeIfPresent(schedule, forKey: .schedule)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(ownership, forKey: .ownership)

            try? container.encodeIfPresent(code, forKey: .code)
        }
    }
}
