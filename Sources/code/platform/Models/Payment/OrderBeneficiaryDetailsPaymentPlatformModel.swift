

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: OrderBeneficiaryDetails
         Used By: Payment
     */

    class OrderBeneficiaryDetails: Codable {
        public var accountNo: String

        public var ifscCode: String

        public var bankName: String

        public var beneficiaryId: String

        public var accountHolder: String

        public var address: String

        public var isActive: Bool

        public var transferMode: String

        public var branchName: String?

        public var comment: String?

        public var email: String

        public var subtitle: String

        public var id: Int

        public var title: String

        public var mobile: String?

        public var modifiedOn: String

        public var displayName: String

        public var createdOn: String

        public var delightsUserName: String?

        public enum CodingKeys: String, CodingKey {
            case accountNo = "account_no"

            case ifscCode = "ifsc_code"

            case bankName = "bank_name"

            case beneficiaryId = "beneficiary_id"

            case accountHolder = "account_holder"

            case address

            case isActive = "is_active"

            case transferMode = "transfer_mode"

            case branchName = "branch_name"

            case comment

            case email

            case subtitle

            case id

            case title

            case mobile

            case modifiedOn = "modified_on"

            case displayName = "display_name"

            case createdOn = "created_on"

            case delightsUserName = "delights_user_name"
        }

        public init(accountHolder: String, accountNo: String, address: String, bankName: String, beneficiaryId: String, branchName: String? = nil, comment: String? = nil, createdOn: String, delightsUserName: String? = nil, displayName: String, email: String, id: Int, ifscCode: String, isActive: Bool, mobile: String? = nil, modifiedOn: String, subtitle: String, title: String, transferMode: String) {
            self.accountNo = accountNo

            self.ifscCode = ifscCode

            self.bankName = bankName

            self.beneficiaryId = beneficiaryId

            self.accountHolder = accountHolder

            self.address = address

            self.isActive = isActive

            self.transferMode = transferMode

            self.branchName = branchName

            self.comment = comment

            self.email = email

            self.subtitle = subtitle

            self.id = id

            self.title = title

            self.mobile = mobile

            self.modifiedOn = modifiedOn

            self.displayName = displayName

            self.createdOn = createdOn

            self.delightsUserName = delightsUserName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            accountNo = try container.decode(String.self, forKey: .accountNo)

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            bankName = try container.decode(String.self, forKey: .bankName)

            beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            address = try container.decode(String.self, forKey: .address)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            transferMode = try container.decode(String.self, forKey: .transferMode)

            do {
                branchName = try container.decode(String.self, forKey: .branchName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                comment = try container.decode(String.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            email = try container.decode(String.self, forKey: .email)

            subtitle = try container.decode(String.self, forKey: .subtitle)

            id = try container.decode(Int.self, forKey: .id)

            title = try container.decode(String.self, forKey: .title)

            do {
                mobile = try container.decode(String.self, forKey: .mobile)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            displayName = try container.decode(String.self, forKey: .displayName)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            do {
                delightsUserName = try container.decode(String.self, forKey: .delightsUserName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(transferMode, forKey: .transferMode)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encode(delightsUserName, forKey: .delightsUserName)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: OrderBeneficiaryDetails
         Used By: Payment
     */

    class OrderBeneficiaryDetails: Codable {
        public var accountNo: String

        public var ifscCode: String

        public var bankName: String

        public var beneficiaryId: String

        public var accountHolder: String

        public var address: String

        public var isActive: Bool

        public var transferMode: String

        public var branchName: String?

        public var comment: String?

        public var email: String

        public var subtitle: String

        public var id: Int

        public var title: String

        public var mobile: String?

        public var modifiedOn: String

        public var displayName: String

        public var createdOn: String

        public var delightsUserName: String?

        public enum CodingKeys: String, CodingKey {
            case accountNo = "account_no"

            case ifscCode = "ifsc_code"

            case bankName = "bank_name"

            case beneficiaryId = "beneficiary_id"

            case accountHolder = "account_holder"

            case address

            case isActive = "is_active"

            case transferMode = "transfer_mode"

            case branchName = "branch_name"

            case comment

            case email

            case subtitle

            case id

            case title

            case mobile

            case modifiedOn = "modified_on"

            case displayName = "display_name"

            case createdOn = "created_on"

            case delightsUserName = "delights_user_name"
        }

        public init(accountHolder: String, accountNo: String, address: String, bankName: String, beneficiaryId: String, branchName: String? = nil, comment: String? = nil, createdOn: String, delightsUserName: String? = nil, displayName: String, email: String, id: Int, ifscCode: String, isActive: Bool, mobile: String? = nil, modifiedOn: String, subtitle: String, title: String, transferMode: String) {
            self.accountNo = accountNo

            self.ifscCode = ifscCode

            self.bankName = bankName

            self.beneficiaryId = beneficiaryId

            self.accountHolder = accountHolder

            self.address = address

            self.isActive = isActive

            self.transferMode = transferMode

            self.branchName = branchName

            self.comment = comment

            self.email = email

            self.subtitle = subtitle

            self.id = id

            self.title = title

            self.mobile = mobile

            self.modifiedOn = modifiedOn

            self.displayName = displayName

            self.createdOn = createdOn

            self.delightsUserName = delightsUserName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            accountNo = try container.decode(String.self, forKey: .accountNo)

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            bankName = try container.decode(String.self, forKey: .bankName)

            beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            address = try container.decode(String.self, forKey: .address)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            transferMode = try container.decode(String.self, forKey: .transferMode)

            do {
                branchName = try container.decode(String.self, forKey: .branchName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                comment = try container.decode(String.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            email = try container.decode(String.self, forKey: .email)

            subtitle = try container.decode(String.self, forKey: .subtitle)

            id = try container.decode(Int.self, forKey: .id)

            title = try container.decode(String.self, forKey: .title)

            do {
                mobile = try container.decode(String.self, forKey: .mobile)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            displayName = try container.decode(String.self, forKey: .displayName)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            do {
                delightsUserName = try container.decode(String.self, forKey: .delightsUserName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(transferMode, forKey: .transferMode)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encode(delightsUserName, forKey: .delightsUserName)
        }
    }
}
