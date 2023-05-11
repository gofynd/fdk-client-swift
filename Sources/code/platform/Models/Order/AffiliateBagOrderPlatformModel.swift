

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var affiliateMeta: [String: Any]

        public var modifiedOn: String

        public var pdfLinks: MarketPlacePdf?

        public var id: String

        public var companyId: Int

        public var hsnCodeId: String

        public var unitPrice: Double

        public var amountPaid: Double

        public var transferPrice: Int

        public var affiliateStoreId: String

        public var sellerIdentifier: String

        public var quantity: Int

        public var sku: String

        public var itemSize: String

        public var avlQty: Int

        public var discount: Double

        public var priceEffective: Double

        public var deliveryCharge: Double

        public var identifier: [String: Any]

        public var priceMarked: Double

        public var itemId: Int

        public var fyndStoreId: String

        public var storeId: Int

        public enum CodingKeys: String, CodingKey {
            case affiliateMeta = "affiliate_meta"

            case modifiedOn = "modified_on"

            case pdfLinks = "pdf_links"

            case id = "_id"

            case companyId = "company_id"

            case hsnCodeId = "hsn_code_id"

            case unitPrice = "unit_price"

            case amountPaid = "amount_paid"

            case transferPrice = "transfer_price"

            case affiliateStoreId = "affiliate_store_id"

            case sellerIdentifier = "seller_identifier"

            case quantity

            case sku

            case itemSize = "item_size"

            case avlQty = "avl_qty"

            case discount

            case priceEffective = "price_effective"

            case deliveryCharge = "delivery_charge"

            case identifier

            case priceMarked = "price_marked"

            case itemId = "item_id"

            case fyndStoreId = "fynd_store_id"

            case storeId = "store_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.affiliateMeta = affiliateMeta

            self.modifiedOn = modifiedOn

            self.pdfLinks = pdfLinks

            self.id = id

            self.companyId = companyId

            self.hsnCodeId = hsnCodeId

            self.unitPrice = unitPrice

            self.amountPaid = amountPaid

            self.transferPrice = transferPrice

            self.affiliateStoreId = affiliateStoreId

            self.sellerIdentifier = sellerIdentifier

            self.quantity = quantity

            self.sku = sku

            self.itemSize = itemSize

            self.avlQty = avlQty

            self.discount = discount

            self.priceEffective = priceEffective

            self.deliveryCharge = deliveryCharge

            self.identifier = identifier

            self.priceMarked = priceMarked

            self.itemId = itemId

            self.fyndStoreId = fyndStoreId

            self.storeId = storeId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(String.self, forKey: .id)

            companyId = try container.decode(Int.self, forKey: .companyId)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            quantity = try container.decode(Int.self, forKey: .quantity)

            sku = try container.decode(String.self, forKey: .sku)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            discount = try container.decode(Double.self, forKey: .discount)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            itemId = try container.decode(Int.self, forKey: .itemId)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            storeId = try container.decode(Int.self, forKey: .storeId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(storeId, forKey: .storeId)
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

        public var modifiedOn: String

        public var pdfLinks: MarketPlacePdf?

        public var id: String

        public var companyId: Int

        public var hsnCodeId: String

        public var unitPrice: Double

        public var amountPaid: Double

        public var transferPrice: Int

        public var affiliateStoreId: String

        public var sellerIdentifier: String

        public var quantity: Int

        public var sku: String

        public var itemSize: String

        public var avlQty: Int

        public var discount: Double

        public var priceEffective: Double

        public var deliveryCharge: Double

        public var identifier: [String: Any]

        public var priceMarked: Double

        public var itemId: Int

        public var fyndStoreId: String

        public var storeId: Int

        public enum CodingKeys: String, CodingKey {
            case affiliateMeta = "affiliate_meta"

            case modifiedOn = "modified_on"

            case pdfLinks = "pdf_links"

            case id = "_id"

            case companyId = "company_id"

            case hsnCodeId = "hsn_code_id"

            case unitPrice = "unit_price"

            case amountPaid = "amount_paid"

            case transferPrice = "transfer_price"

            case affiliateStoreId = "affiliate_store_id"

            case sellerIdentifier = "seller_identifier"

            case quantity

            case sku

            case itemSize = "item_size"

            case avlQty = "avl_qty"

            case discount

            case priceEffective = "price_effective"

            case deliveryCharge = "delivery_charge"

            case identifier

            case priceMarked = "price_marked"

            case itemId = "item_id"

            case fyndStoreId = "fynd_store_id"

            case storeId = "store_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.affiliateMeta = affiliateMeta

            self.modifiedOn = modifiedOn

            self.pdfLinks = pdfLinks

            self.id = id

            self.companyId = companyId

            self.hsnCodeId = hsnCodeId

            self.unitPrice = unitPrice

            self.amountPaid = amountPaid

            self.transferPrice = transferPrice

            self.affiliateStoreId = affiliateStoreId

            self.sellerIdentifier = sellerIdentifier

            self.quantity = quantity

            self.sku = sku

            self.itemSize = itemSize

            self.avlQty = avlQty

            self.discount = discount

            self.priceEffective = priceEffective

            self.deliveryCharge = deliveryCharge

            self.identifier = identifier

            self.priceMarked = priceMarked

            self.itemId = itemId

            self.fyndStoreId = fyndStoreId

            self.storeId = storeId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(String.self, forKey: .id)

            companyId = try container.decode(Int.self, forKey: .companyId)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            quantity = try container.decode(Int.self, forKey: .quantity)

            sku = try container.decode(String.self, forKey: .sku)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            discount = try container.decode(Double.self, forKey: .discount)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            itemId = try container.decode(Int.self, forKey: .itemId)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            storeId = try container.decode(Int.self, forKey: .storeId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(storeId, forKey: .storeId)
        }
    }
}
