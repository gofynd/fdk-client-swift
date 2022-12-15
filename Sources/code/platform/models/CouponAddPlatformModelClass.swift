

import Foundation
public extension PlatformClient {
    /*
         Model: CouponAdd
         Used By: Cart
     */

    class CouponAdd: Codable {
        public var ownership: Ownership

        public var ruleDefinition: RuleDefinition

        public var state: State?

        public var dateMeta: CouponDateMeta?

        public var identifiers: Identifier

        public var restrictions: Restrictions?

        public var schedule: CouponSchedule?

        public var tags: [String]?

        public var author: CouponAuthor?

        public var action: CouponAction?

        public var code: String

        public var rule: [Rule]

        public var typeSlug: String

        public var displayMeta: DisplayMeta

        public var validation: Validation?

        public var validity: Validity

        public enum CodingKeys: String, CodingKey {
            case ownership

            case ruleDefinition = "rule_definition"

            case state

            case dateMeta = "date_meta"

            case identifiers

            case restrictions

            case schedule = "_schedule"

            case tags

            case author

            case action

            case code

            case rule

            case typeSlug = "type_slug"

            case displayMeta = "display_meta"

            case validation

            case validity
        }

        public init(action: CouponAction? = nil, author: CouponAuthor? = nil, code: String, dateMeta: CouponDateMeta? = nil, displayMeta: DisplayMeta, identifiers: Identifier, ownership: Ownership, restrictions: Restrictions? = nil, rule: [Rule], ruleDefinition: RuleDefinition, state: State? = nil, tags: [String]? = nil, typeSlug: String, validation: Validation? = nil, validity: Validity, schedule: CouponSchedule? = nil) {
            self.ownership = ownership

            self.ruleDefinition = ruleDefinition

            self.state = state

            self.dateMeta = dateMeta

            self.identifiers = identifiers

            self.restrictions = restrictions

            self.schedule = schedule

            self.tags = tags

            self.author = author

            self.action = action

            self.code = code

            self.rule = rule

            self.typeSlug = typeSlug

            self.displayMeta = displayMeta

            self.validation = validation

            self.validity = validity
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            ownership = try container.decode(Ownership.self, forKey: .ownership)

            ruleDefinition = try container.decode(RuleDefinition.self, forKey: .ruleDefinition)

            do {
                state = try container.decode(State.self, forKey: .state)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                dateMeta = try container.decode(CouponDateMeta.self, forKey: .dateMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            do {
                restrictions = try container.decode(Restrictions.self, forKey: .restrictions)

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

            do {
                tags = try container.decode([String].self, forKey: .tags)

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
                action = try container.decode(CouponAction.self, forKey: .action)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            code = try container.decode(String.self, forKey: .code)

            rule = try container.decode([Rule].self, forKey: .rule)

            typeSlug = try container.decode(String.self, forKey: .typeSlug)

            displayMeta = try container.decode(DisplayMeta.self, forKey: .displayMeta)

            do {
                validation = try container.decode(Validation.self, forKey: .validation)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            validity = try container.decode(Validity.self, forKey: .validity)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(ownership, forKey: .ownership)

            try? container.encodeIfPresent(ruleDefinition, forKey: .ruleDefinition)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(dateMeta, forKey: .dateMeta)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(restrictions, forKey: .restrictions)

            try? container.encodeIfPresent(schedule, forKey: .schedule)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(author, forKey: .author)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(rule, forKey: .rule)

            try? container.encodeIfPresent(typeSlug, forKey: .typeSlug)

            try? container.encodeIfPresent(displayMeta, forKey: .displayMeta)

            try? container.encodeIfPresent(validation, forKey: .validation)

            try? container.encodeIfPresent(validity, forKey: .validity)
        }
    }
}
