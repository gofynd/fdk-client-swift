

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PaymentObjectListSerializer
         Used By: Payment
     */

    class PaymentObjectListSerializer: Codable {
        public var currency: String

        public var collectedBy: String

        public var createdOn: String

        public var allStatus: [String]

        public var paymentGateway: String

        public var modifiedOn: String

        public var amountInPaisa: String

        public var aggregatorPaymentObject: [String: Any]?

        public var paymentModeIdentifier: String

        public var applicationId: String

        public var paymentMode: String

        public var userObject: [String: Any]

        public var id: String

        public var companyId: String

        public var paymentId: String?

        public var currentStatus: String

        public var refundObject: [String: Any]?

        public var refundedBy: String

        public enum CodingKeys: String, CodingKey {
            case currency

            case collectedBy = "collected_by"

            case createdOn = "created_on"

            case allStatus = "all_status"

            case paymentGateway = "payment_gateway"

            case modifiedOn = "modified_on"

            case amountInPaisa = "amount_in_paisa"

            case aggregatorPaymentObject = "aggregator_payment_object"

            case paymentModeIdentifier = "payment_mode_identifier"

            case applicationId = "application_id"

            case paymentMode = "payment_mode"

            case userObject = "user_object"

            case id

            case companyId = "company_id"

            case paymentId = "payment_id"

            case currentStatus = "current_status"

            case refundObject = "refund_object"

            case refundedBy = "refunded_by"
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.currency = currency

            self.collectedBy = collectedBy

            self.createdOn = createdOn

            self.allStatus = allStatus

            self.paymentGateway = paymentGateway

            self.modifiedOn = modifiedOn

            self.amountInPaisa = amountInPaisa

            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.paymentModeIdentifier = paymentModeIdentifier

            self.applicationId = applicationId

            self.paymentMode = paymentMode

            self.userObject = userObject

            self.id = id

            self.companyId = companyId

            self.paymentId = paymentId

            self.currentStatus = currentStatus

            self.refundObject = refundObject

            self.refundedBy = refundedBy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            currency = try container.decode(String.self, forKey: .currency)

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            allStatus = try container.decode([String].self, forKey: .allStatus)

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            id = try container.decode(String.self, forKey: .id)

            companyId = try container.decode(String.self, forKey: .companyId)

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            do {
                refundObject = try container.decode([String: Any].self, forKey: .refundObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            refundedBy = try container.decode(String.self, forKey: .refundedBy)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: PaymentObjectListSerializer
         Used By: Payment
     */

    class PaymentObjectListSerializer: Codable {
        public var currency: String

        public var collectedBy: String

        public var createdOn: String

        public var allStatus: [String]

        public var paymentGateway: String

        public var modifiedOn: String

        public var amountInPaisa: String

        public var aggregatorPaymentObject: [String: Any]?

        public var paymentModeIdentifier: String

        public var applicationId: String

        public var paymentMode: String

        public var userObject: [String: Any]

        public var id: String

        public var companyId: String

        public var paymentId: String?

        public var currentStatus: String

        public var refundObject: [String: Any]?

        public var refundedBy: String

        public enum CodingKeys: String, CodingKey {
            case currency

            case collectedBy = "collected_by"

            case createdOn = "created_on"

            case allStatus = "all_status"

            case paymentGateway = "payment_gateway"

            case modifiedOn = "modified_on"

            case amountInPaisa = "amount_in_paisa"

            case aggregatorPaymentObject = "aggregator_payment_object"

            case paymentModeIdentifier = "payment_mode_identifier"

            case applicationId = "application_id"

            case paymentMode = "payment_mode"

            case userObject = "user_object"

            case id

            case companyId = "company_id"

            case paymentId = "payment_id"

            case currentStatus = "current_status"

            case refundObject = "refund_object"

            case refundedBy = "refunded_by"
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.currency = currency

            self.collectedBy = collectedBy

            self.createdOn = createdOn

            self.allStatus = allStatus

            self.paymentGateway = paymentGateway

            self.modifiedOn = modifiedOn

            self.amountInPaisa = amountInPaisa

            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.paymentModeIdentifier = paymentModeIdentifier

            self.applicationId = applicationId

            self.paymentMode = paymentMode

            self.userObject = userObject

            self.id = id

            self.companyId = companyId

            self.paymentId = paymentId

            self.currentStatus = currentStatus

            self.refundObject = refundObject

            self.refundedBy = refundedBy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            currency = try container.decode(String.self, forKey: .currency)

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            allStatus = try container.decode([String].self, forKey: .allStatus)

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            id = try container.decode(String.self, forKey: .id)

            companyId = try container.decode(String.self, forKey: .companyId)

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            do {
                refundObject = try container.decode([String: Any].self, forKey: .refundObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            refundedBy = try container.decode(String.self, forKey: .refundedBy)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)
        }
    }
}
