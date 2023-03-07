

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var companyId: Int

        public var fyndStoreId: String

        public var pdfLinks: MarketPlacePdf?

        public var transferPrice: Int

        public var quantity: Int

        public var priceEffective: Double

        public var itemId: Int

        public var sku: String

        public var discount: Double

        public var priceMarked: Double

        public var id: String

        public var amountPaid: Double

        public var affiliateMeta: [String: Any]

        public var modifiedOn: String

        public var hsnCodeId: String

        public var identifier: [String: Any]

        public var deliveryCharge: Double

        public var itemSize: String

        public var sellerIdentifier: String

        public var unitPrice: Double

        public var affiliateStoreId: String

        public var avlQty: Int

        public var storeId: Int

        public enum CodingKeys: String, CodingKey {
            case companyId = "company_id"

            case fyndStoreId = "fynd_store_id"

            case pdfLinks = "pdf_links"

            case transferPrice = "transfer_price"

            case quantity

            case priceEffective = "price_effective"

            case itemId = "item_id"

            case sku

            case discount

            case priceMarked = "price_marked"

            case id = "_id"

            case amountPaid = "amount_paid"

            case affiliateMeta = "affiliate_meta"

            case modifiedOn = "modified_on"

            case hsnCodeId = "hsn_code_id"

            case identifier

            case deliveryCharge = "delivery_charge"

            case itemSize = "item_size"

            case sellerIdentifier = "seller_identifier"

            case unitPrice = "unit_price"

            case affiliateStoreId = "affiliate_store_id"

            case avlQty = "avl_qty"

            case storeId = "store_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.companyId = companyId

            self.fyndStoreId = fyndStoreId

            self.pdfLinks = pdfLinks

            self.transferPrice = transferPrice

            self.quantity = quantity

            self.priceEffective = priceEffective

            self.itemId = itemId

            self.sku = sku

            self.discount = discount

            self.priceMarked = priceMarked

            self.id = id

            self.amountPaid = amountPaid

            self.affiliateMeta = affiliateMeta

            self.modifiedOn = modifiedOn

            self.hsnCodeId = hsnCodeId

            self.identifier = identifier

            self.deliveryCharge = deliveryCharge

            self.itemSize = itemSize

            self.sellerIdentifier = sellerIdentifier

            self.unitPrice = unitPrice

            self.affiliateStoreId = affiliateStoreId

            self.avlQty = avlQty

            self.storeId = storeId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            companyId = try container.decode(Int.self, forKey: .companyId)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            quantity = try container.decode(Int.self, forKey: .quantity)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            itemId = try container.decode(Int.self, forKey: .itemId)

            sku = try container.decode(String.self, forKey: .sku)

            discount = try container.decode(Double.self, forKey: .discount)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            id = try container.decode(String.self, forKey: .id)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            storeId = try container.decode(Int.self, forKey: .storeId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

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
        public var companyId: Int

        public var fyndStoreId: String

        public var pdfLinks: MarketPlacePdf?

        public var transferPrice: Int

        public var quantity: Int

        public var priceEffective: Double

        public var itemId: Int

        public var sku: String

        public var discount: Double

        public var priceMarked: Double

        public var id: String

        public var amountPaid: Double

        public var affiliateMeta: [String: Any]

        public var modifiedOn: String

        public var hsnCodeId: String

        public var identifier: [String: Any]

        public var deliveryCharge: Double

        public var itemSize: String

        public var sellerIdentifier: String

        public var unitPrice: Double

        public var affiliateStoreId: String

        public var avlQty: Int

        public var storeId: Int

        public enum CodingKeys: String, CodingKey {
            case companyId = "company_id"

            case fyndStoreId = "fynd_store_id"

            case pdfLinks = "pdf_links"

            case transferPrice = "transfer_price"

            case quantity

            case priceEffective = "price_effective"

            case itemId = "item_id"

            case sku

            case discount

            case priceMarked = "price_marked"

            case id = "_id"

            case amountPaid = "amount_paid"

            case affiliateMeta = "affiliate_meta"

            case modifiedOn = "modified_on"

            case hsnCodeId = "hsn_code_id"

            case identifier

            case deliveryCharge = "delivery_charge"

            case itemSize = "item_size"

            case sellerIdentifier = "seller_identifier"

            case unitPrice = "unit_price"

            case affiliateStoreId = "affiliate_store_id"

            case avlQty = "avl_qty"

            case storeId = "store_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.companyId = companyId

            self.fyndStoreId = fyndStoreId

            self.pdfLinks = pdfLinks

            self.transferPrice = transferPrice

            self.quantity = quantity

            self.priceEffective = priceEffective

            self.itemId = itemId

            self.sku = sku

            self.discount = discount

            self.priceMarked = priceMarked

            self.id = id

            self.amountPaid = amountPaid

            self.affiliateMeta = affiliateMeta

            self.modifiedOn = modifiedOn

            self.hsnCodeId = hsnCodeId

            self.identifier = identifier

            self.deliveryCharge = deliveryCharge

            self.itemSize = itemSize

            self.sellerIdentifier = sellerIdentifier

            self.unitPrice = unitPrice

            self.affiliateStoreId = affiliateStoreId

            self.avlQty = avlQty

            self.storeId = storeId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            companyId = try container.decode(Int.self, forKey: .companyId)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            quantity = try container.decode(Int.self, forKey: .quantity)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            itemId = try container.decode(Int.self, forKey: .itemId)

            sku = try container.decode(String.self, forKey: .sku)

            discount = try container.decode(Double.self, forKey: .discount)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            id = try container.decode(String.self, forKey: .id)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            storeId = try container.decode(Int.self, forKey: .storeId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(storeId, forKey: .storeId)
        }
    }
}
