

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PaymentObjectListSerializer
         Used By: Payment
     */

    class PaymentObjectListSerializer: Codable {
        public var createdOn: String

        public var currency: String

        public var id: String

        public var currentStatus: String

        public var paymentGateway: String

        public var refundedBy: String

        public var modifiedOn: String

        public var amountInPaisa: String

        public var companyId: String

        public var userObject: [String: Any]

        public var applicationId: String

        public var refundObject: [String: Any]?

        public var paymentId: String?

        public var aggregatorPaymentObject: [String: Any]?

        public var paymentMode: String

        public var allStatus: [String]

        public var collectedBy: String

        public var paymentModeIdentifier: String

        public enum CodingKeys: String, CodingKey {
            case createdOn = "created_on"

            case currency

            case id

            case currentStatus = "current_status"

            case paymentGateway = "payment_gateway"

            case refundedBy = "refunded_by"

            case modifiedOn = "modified_on"

            case amountInPaisa = "amount_in_paisa"

            case companyId = "company_id"

            case userObject = "user_object"

            case applicationId = "application_id"

            case refundObject = "refund_object"

            case paymentId = "payment_id"

            case aggregatorPaymentObject = "aggregator_payment_object"

            case paymentMode = "payment_mode"

            case allStatus = "all_status"

            case collectedBy = "collected_by"

            case paymentModeIdentifier = "payment_mode_identifier"
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.createdOn = createdOn

            self.currency = currency

            self.id = id

            self.currentStatus = currentStatus

            self.paymentGateway = paymentGateway

            self.refundedBy = refundedBy

            self.modifiedOn = modifiedOn

            self.amountInPaisa = amountInPaisa

            self.companyId = companyId

            self.userObject = userObject

            self.applicationId = applicationId

            self.refundObject = refundObject

            self.paymentId = paymentId

            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.paymentMode = paymentMode

            self.allStatus = allStatus

            self.collectedBy = collectedBy

            self.paymentModeIdentifier = paymentModeIdentifier
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            currency = try container.decode(String.self, forKey: .currency)

            id = try container.decode(String.self, forKey: .id)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            companyId = try container.decode(String.self, forKey: .companyId)

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            do {
                refundObject = try container.decode([String: Any].self, forKey: .refundObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            allStatus = try container.decode([String].self, forKey: .allStatus)

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: PaymentObjectListSerializer
         Used By: Payment
     */

    class PaymentObjectListSerializer: Codable {
        public var createdOn: String

        public var currency: String

        public var id: String

        public var currentStatus: String

        public var paymentGateway: String

        public var refundedBy: String

        public var modifiedOn: String

        public var amountInPaisa: String

        public var companyId: String

        public var userObject: [String: Any]

        public var applicationId: String

        public var refundObject: [String: Any]?

        public var paymentId: String?

        public var aggregatorPaymentObject: [String: Any]?

        public var paymentMode: String

        public var allStatus: [String]

        public var collectedBy: String

        public var paymentModeIdentifier: String

        public enum CodingKeys: String, CodingKey {
            case createdOn = "created_on"

            case currency

            case id

            case currentStatus = "current_status"

            case paymentGateway = "payment_gateway"

            case refundedBy = "refunded_by"

            case modifiedOn = "modified_on"

            case amountInPaisa = "amount_in_paisa"

            case companyId = "company_id"

            case userObject = "user_object"

            case applicationId = "application_id"

            case refundObject = "refund_object"

            case paymentId = "payment_id"

            case aggregatorPaymentObject = "aggregator_payment_object"

            case paymentMode = "payment_mode"

            case allStatus = "all_status"

            case collectedBy = "collected_by"

            case paymentModeIdentifier = "payment_mode_identifier"
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.createdOn = createdOn

            self.currency = currency

            self.id = id

            self.currentStatus = currentStatus

            self.paymentGateway = paymentGateway

            self.refundedBy = refundedBy

            self.modifiedOn = modifiedOn

            self.amountInPaisa = amountInPaisa

            self.companyId = companyId

            self.userObject = userObject

            self.applicationId = applicationId

            self.refundObject = refundObject

            self.paymentId = paymentId

            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.paymentMode = paymentMode

            self.allStatus = allStatus

            self.collectedBy = collectedBy

            self.paymentModeIdentifier = paymentModeIdentifier
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            currency = try container.decode(String.self, forKey: .currency)

            id = try container.decode(String.self, forKey: .id)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            companyId = try container.decode(String.self, forKey: .companyId)

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            do {
                refundObject = try container.decode([String: Any].self, forKey: .refundObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            allStatus = try container.decode([String].self, forKey: .allStatus)

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)
        }
    }
}
