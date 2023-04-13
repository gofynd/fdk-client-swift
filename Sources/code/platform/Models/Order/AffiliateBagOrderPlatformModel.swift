

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var affiliateMeta: [String: Any]

        public var fyndStoreId: String

        public var affiliateStoreId: String

        public var pdfLinks: MarketPlacePdf?

        public var itemId: Int

        public var priceEffective: Double

        public var id: String

        public var unitPrice: Double

        public var sku: String

        public var storeId: Int

        public var modifiedOn: String

        public var identifier: [String: Any]

        public var amountPaid: Double

        public var companyId: Int

        public var itemSize: String

        public var priceMarked: Double

        public var transferPrice: Int

        public var deliveryCharge: Double

        public var avlQty: Int

        public var sellerIdentifier: String

        public var quantity: Int

        public var discount: Double

        public var hsnCodeId: String

        public enum CodingKeys: String, CodingKey {
            case affiliateMeta = "affiliate_meta"

            case fyndStoreId = "fynd_store_id"

            case affiliateStoreId = "affiliate_store_id"

            case pdfLinks = "pdf_links"

            case itemId = "item_id"

            case priceEffective = "price_effective"

            case id = "_id"

            case unitPrice = "unit_price"

            case sku

            case storeId = "store_id"

            case modifiedOn = "modified_on"

            case identifier

            case amountPaid = "amount_paid"

            case companyId = "company_id"

            case itemSize = "item_size"

            case priceMarked = "price_marked"

            case transferPrice = "transfer_price"

            case deliveryCharge = "delivery_charge"

            case avlQty = "avl_qty"

            case sellerIdentifier = "seller_identifier"

            case quantity

            case discount

            case hsnCodeId = "hsn_code_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.affiliateMeta = affiliateMeta

            self.fyndStoreId = fyndStoreId

            self.affiliateStoreId = affiliateStoreId

            self.pdfLinks = pdfLinks

            self.itemId = itemId

            self.priceEffective = priceEffective

            self.id = id

            self.unitPrice = unitPrice

            self.sku = sku

            self.storeId = storeId

            self.modifiedOn = modifiedOn

            self.identifier = identifier

            self.amountPaid = amountPaid

            self.companyId = companyId

            self.itemSize = itemSize

            self.priceMarked = priceMarked

            self.transferPrice = transferPrice

            self.deliveryCharge = deliveryCharge

            self.avlQty = avlQty

            self.sellerIdentifier = sellerIdentifier

            self.quantity = quantity

            self.discount = discount

            self.hsnCodeId = hsnCodeId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemId = try container.decode(Int.self, forKey: .itemId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            id = try container.decode(String.self, forKey: .id)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            sku = try container.decode(String.self, forKey: .sku)

            storeId = try container.decode(Int.self, forKey: .storeId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            companyId = try container.decode(Int.self, forKey: .companyId)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            quantity = try container.decode(Int.self, forKey: .quantity)

            discount = try container.decode(Double.self, forKey: .discount)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var affiliateMeta: [String: Any]

        public var fyndStoreId: String

        public var affiliateStoreId: String

        public var pdfLinks: MarketPlacePdf?

        public var itemId: Int

        public var priceEffective: Double

        public var id: String

        public var unitPrice: Double

        public var sku: String

        public var storeId: Int

        public var modifiedOn: String

        public var identifier: [String: Any]

        public var amountPaid: Double

        public var companyId: Int

        public var itemSize: String

        public var priceMarked: Double

        public var transferPrice: Int

        public var deliveryCharge: Double

        public var avlQty: Int

        public var sellerIdentifier: String

        public var quantity: Int

        public var discount: Double

        public var hsnCodeId: String

        public enum CodingKeys: String, CodingKey {
            case affiliateMeta = "affiliate_meta"

            case fyndStoreId = "fynd_store_id"

            case affiliateStoreId = "affiliate_store_id"

            case pdfLinks = "pdf_links"

            case itemId = "item_id"

            case priceEffective = "price_effective"

            case id = "_id"

            case unitPrice = "unit_price"

            case sku

            case storeId = "store_id"

            case modifiedOn = "modified_on"

            case identifier

            case amountPaid = "amount_paid"

            case companyId = "company_id"

            case itemSize = "item_size"

            case priceMarked = "price_marked"

            case transferPrice = "transfer_price"

            case deliveryCharge = "delivery_charge"

            case avlQty = "avl_qty"

            case sellerIdentifier = "seller_identifier"

            case quantity

            case discount

            case hsnCodeId = "hsn_code_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.affiliateMeta = affiliateMeta

            self.fyndStoreId = fyndStoreId

            self.affiliateStoreId = affiliateStoreId

            self.pdfLinks = pdfLinks

            self.itemId = itemId

            self.priceEffective = priceEffective

            self.id = id

            self.unitPrice = unitPrice

            self.sku = sku

            self.storeId = storeId

            self.modifiedOn = modifiedOn

            self.identifier = identifier

            self.amountPaid = amountPaid

            self.companyId = companyId

            self.itemSize = itemSize

            self.priceMarked = priceMarked

            self.transferPrice = transferPrice

            self.deliveryCharge = deliveryCharge

            self.avlQty = avlQty

            self.sellerIdentifier = sellerIdentifier

            self.quantity = quantity

            self.discount = discount

            self.hsnCodeId = hsnCodeId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemId = try container.decode(Int.self, forKey: .itemId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            id = try container.decode(String.self, forKey: .id)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            sku = try container.decode(String.self, forKey: .sku)

            storeId = try container.decode(Int.self, forKey: .storeId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            companyId = try container.decode(Int.self, forKey: .companyId)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            quantity = try container.decode(Int.self, forKey: .quantity)

            discount = try container.decode(Double.self, forKey: .discount)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)
        }
    }
}
