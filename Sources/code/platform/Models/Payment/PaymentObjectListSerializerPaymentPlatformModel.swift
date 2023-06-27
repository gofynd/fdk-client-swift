

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PaymentObjectListSerializer
         Used By: Payment
     */

    class PaymentObjectListSerializer: Codable {
        public var collectedBy: String

        public var createdOn: String

        public var userObject: [String: Any]

        public var aggregatorPaymentObject: [String: Any]?

        public var id: String

        public var refundedBy: String

        public var paymentGateway: String

        public var currentStatus: String

        public var paymentModeIdentifier: String

        public var currency: String

        public var paymentId: String?

        public var modifiedOn: String

        public var applicationId: String

        public var allStatus: [String]

        public var refundObject: [String: Any]?

        public var paymentMode: String

        public var amountInPaisa: String

        public var companyId: String

        public enum CodingKeys: String, CodingKey {
            case collectedBy = "collected_by"

            case createdOn = "created_on"

            case userObject = "user_object"

            case aggregatorPaymentObject = "aggregator_payment_object"

            case id

            case refundedBy = "refunded_by"

            case paymentGateway = "payment_gateway"

            case currentStatus = "current_status"

            case paymentModeIdentifier = "payment_mode_identifier"

            case currency

            case paymentId = "payment_id"

            case modifiedOn = "modified_on"

            case applicationId = "application_id"

            case allStatus = "all_status"

            case refundObject = "refund_object"

            case paymentMode = "payment_mode"

            case amountInPaisa = "amount_in_paisa"

            case companyId = "company_id"
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.collectedBy = collectedBy

            self.createdOn = createdOn

            self.userObject = userObject

            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.id = id

            self.refundedBy = refundedBy

            self.paymentGateway = paymentGateway

            self.currentStatus = currentStatus

            self.paymentModeIdentifier = paymentModeIdentifier

            self.currency = currency

            self.paymentId = paymentId

            self.modifiedOn = modifiedOn

            self.applicationId = applicationId

            self.allStatus = allStatus

            self.refundObject = refundObject

            self.paymentMode = paymentMode

            self.amountInPaisa = amountInPaisa

            self.companyId = companyId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(String.self, forKey: .id)

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            currency = try container.decode(String.self, forKey: .currency)

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            allStatus = try container.decode([String].self, forKey: .allStatus)

            do {
                refundObject = try container.decode([String: Any].self, forKey: .refundObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            companyId = try container.decode(String.self, forKey: .companyId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encodeIfPresent(companyId, forKey: .companyId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: PaymentObjectListSerializer
         Used By: Payment
     */

    class PaymentObjectListSerializer: Codable {
        public var collectedBy: String

        public var createdOn: String

        public var userObject: [String: Any]

        public var aggregatorPaymentObject: [String: Any]?

        public var id: String

        public var refundedBy: String

        public var paymentGateway: String

        public var currentStatus: String

        public var paymentModeIdentifier: String

        public var currency: String

        public var paymentId: String?

        public var modifiedOn: String

        public var applicationId: String

        public var allStatus: [String]

        public var refundObject: [String: Any]?

        public var paymentMode: String

        public var amountInPaisa: String

        public var companyId: String

        public enum CodingKeys: String, CodingKey {
            case collectedBy = "collected_by"

            case createdOn = "created_on"

            case userObject = "user_object"

            case aggregatorPaymentObject = "aggregator_payment_object"

            case id

            case refundedBy = "refunded_by"

            case paymentGateway = "payment_gateway"

            case currentStatus = "current_status"

            case paymentModeIdentifier = "payment_mode_identifier"

            case currency

            case paymentId = "payment_id"

            case modifiedOn = "modified_on"

            case applicationId = "application_id"

            case allStatus = "all_status"

            case refundObject = "refund_object"

            case paymentMode = "payment_mode"

            case amountInPaisa = "amount_in_paisa"

            case companyId = "company_id"
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.collectedBy = collectedBy

            self.createdOn = createdOn

            self.userObject = userObject

            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.id = id

            self.refundedBy = refundedBy

            self.paymentGateway = paymentGateway

            self.currentStatus = currentStatus

            self.paymentModeIdentifier = paymentModeIdentifier

            self.currency = currency

            self.paymentId = paymentId

            self.modifiedOn = modifiedOn

            self.applicationId = applicationId

            self.allStatus = allStatus

            self.refundObject = refundObject

            self.paymentMode = paymentMode

            self.amountInPaisa = amountInPaisa

            self.companyId = companyId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(String.self, forKey: .id)

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            currency = try container.decode(String.self, forKey: .currency)

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            allStatus = try container.decode([String].self, forKey: .allStatus)

            do {
                refundObject = try container.decode([String: Any].self, forKey: .refundObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            companyId = try container.decode(String.self, forKey: .companyId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encodeIfPresent(companyId, forKey: .companyId)
        }
    }
}
