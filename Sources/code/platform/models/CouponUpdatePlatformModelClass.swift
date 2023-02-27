

import Foundation
public extension PlatformClient {
    /*
         Model: CouponUpdate
         Used By: Cart
     */

    class CouponUpdate: Codable {
        public var restrictions: Restrictions?

        public var ruleDefinition: RuleDefinition

        public var action: CouponAction?

        public var identifiers: Identifier

        public var validity: Validity

        public var schedule: CouponSchedule?

        public var validation: Validation?

        public var dateMeta: CouponDateMeta?

        public var code: String

        public var rule: [Rule]

        public var displayMeta: DisplayMeta

        public var author: CouponAuthor?

        public var ownership: Ownership

        public var tags: [String]?

        public var state: State?

        public var typeSlug: String

        public enum CodingKeys: String, CodingKey {
            case restrictions

            case ruleDefinition = "rule_definition"

            case action

            case identifiers

            case validity

            case schedule = "_schedule"

            case validation

            case dateMeta = "date_meta"

            case code

            case rule

            case displayMeta = "display_meta"

            case author

            case ownership

            case tags

            case state

            case typeSlug = "type_slug"
        }

        public init(action: CouponAction? = nil, author: CouponAuthor? = nil, code: String, dateMeta: CouponDateMeta? = nil, displayMeta: DisplayMeta, identifiers: Identifier, ownership: Ownership, restrictions: Restrictions? = nil, rule: [Rule], ruleDefinition: RuleDefinition, state: State? = nil, tags: [String]? = nil, typeSlug: String, validation: Validation? = nil, validity: Validity, schedule: CouponSchedule? = nil) {
            self.restrictions = restrictions

            self.ruleDefinition = ruleDefinition

            self.action = action

            self.identifiers = identifiers

            self.validity = validity

            self.schedule = schedule

            self.validation = validation

            self.dateMeta = dateMeta

            self.code = code

            self.rule = rule

            self.displayMeta = displayMeta

            self.author = author

            self.ownership = ownership

            self.tags = tags

            self.state = state

            self.typeSlug = typeSlug
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                restrictions = try container.decode(Restrictions.self, forKey: .restrictions)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            ruleDefinition = try container.decode(RuleDefinition.self, forKey: .ruleDefinition)

            do {
                action = try container.decode(CouponAction.self, forKey: .action)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            validity = try container.decode(Validity.self, forKey: .validity)

            do {
                schedule = try container.decode(CouponSchedule.self, forKey: .schedule)

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

            do {
                dateMeta = try container.decode(CouponDateMeta.self, forKey: .dateMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            code = try container.decode(String.self, forKey: .code)

            rule = try container.decode([Rule].self, forKey: .rule)

            displayMeta = try container.decode(DisplayMeta.self, forKey: .displayMeta)

            do {
                author = try container.decode(CouponAuthor.self, forKey: .author)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            ownership = try container.decode(Ownership.self, forKey: .ownership)

            do {
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                state = try container.decode(State.self, forKey: .state)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            typeSlug = try container.decode(String.self, forKey: .typeSlug)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(restrictions, forKey: .restrictions)

            try? container.encodeIfPresent(ruleDefinition, forKey: .ruleDefinition)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(validity, forKey: .validity)

            try? container.encodeIfPresent(schedule, forKey: .schedule)

            try? container.encodeIfPresent(validation, forKey: .validation)

            try? container.encodeIfPresent(dateMeta, forKey: .dateMeta)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(rule, forKey: .rule)

            try? container.encodeIfPresent(displayMeta, forKey: .displayMeta)

            try? container.encodeIfPresent(author, forKey: .author)

            try? container.encodeIfPresent(ownership, forKey: .ownership)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(typeSlug, forKey: .typeSlug)
        }
    }
}
