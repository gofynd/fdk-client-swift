

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var unitPrice: Double

        public var pdfLinks: MarketPlacePdf?

        public var transferPrice: Int

        public var deliveryCharge: Double

        public var avlQty: Int

        public var itemId: Int

        public var priceMarked: Double

        public var modifiedOn: String

        public var amountPaid: Double

        public var fyndStoreId: String

        public var sellerIdentifier: String

        public var sku: String

        public var discount: Double

        public var priceEffective: Double

        public var quantity: Int

        public var storeId: Int

        public var itemSize: String

        public var affiliateMeta: [String: Any]

        public var hsnCodeId: String

        public var id: String

        public var companyId: Int

        public var identifier: [String: Any]

        public var affiliateStoreId: String

        public enum CodingKeys: String, CodingKey {
            case unitPrice = "unit_price"

            case pdfLinks = "pdf_links"

            case transferPrice = "transfer_price"

            case deliveryCharge = "delivery_charge"

            case avlQty = "avl_qty"

            case itemId = "item_id"

            case priceMarked = "price_marked"

            case modifiedOn = "modified_on"

            case amountPaid = "amount_paid"

            case fyndStoreId = "fynd_store_id"

            case sellerIdentifier = "seller_identifier"

            case sku

            case discount

            case priceEffective = "price_effective"

            case quantity

            case storeId = "store_id"

            case itemSize = "item_size"

            case affiliateMeta = "affiliate_meta"

            case hsnCodeId = "hsn_code_id"

            case id = "_id"

            case companyId = "company_id"

            case identifier

            case affiliateStoreId = "affiliate_store_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.unitPrice = unitPrice

            self.pdfLinks = pdfLinks

            self.transferPrice = transferPrice

            self.deliveryCharge = deliveryCharge

            self.avlQty = avlQty

            self.itemId = itemId

            self.priceMarked = priceMarked

            self.modifiedOn = modifiedOn

            self.amountPaid = amountPaid

            self.fyndStoreId = fyndStoreId

            self.sellerIdentifier = sellerIdentifier

            self.sku = sku

            self.discount = discount

            self.priceEffective = priceEffective

            self.quantity = quantity

            self.storeId = storeId

            self.itemSize = itemSize

            self.affiliateMeta = affiliateMeta

            self.hsnCodeId = hsnCodeId

            self.id = id

            self.companyId = companyId

            self.identifier = identifier

            self.affiliateStoreId = affiliateStoreId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            itemId = try container.decode(Int.self, forKey: .itemId)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            sku = try container.decode(String.self, forKey: .sku)

            discount = try container.decode(Double.self, forKey: .discount)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            quantity = try container.decode(Int.self, forKey: .quantity)

            storeId = try container.decode(Int.self, forKey: .storeId)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            id = try container.decode(String.self, forKey: .id)

            companyId = try container.decode(Int.self, forKey: .companyId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var unitPrice: Double

        public var pdfLinks: MarketPlacePdf?

        public var transferPrice: Int

        public var deliveryCharge: Double

        public var avlQty: Int

        public var itemId: Int

        public var priceMarked: Double

        public var modifiedOn: String

        public var amountPaid: Double

        public var fyndStoreId: String

        public var sellerIdentifier: String

        public var sku: String

        public var discount: Double

        public var priceEffective: Double

        public var quantity: Int

        public var storeId: Int

        public var itemSize: String

        public var affiliateMeta: [String: Any]

        public var hsnCodeId: String

        public var id: String

        public var companyId: Int

        public var identifier: [String: Any]

        public var affiliateStoreId: String

        public enum CodingKeys: String, CodingKey {
            case unitPrice = "unit_price"

            case pdfLinks = "pdf_links"

            case transferPrice = "transfer_price"

            case deliveryCharge = "delivery_charge"

            case avlQty = "avl_qty"

            case itemId = "item_id"

            case priceMarked = "price_marked"

            case modifiedOn = "modified_on"

            case amountPaid = "amount_paid"

            case fyndStoreId = "fynd_store_id"

            case sellerIdentifier = "seller_identifier"

            case sku

            case discount

            case priceEffective = "price_effective"

            case quantity

            case storeId = "store_id"

            case itemSize = "item_size"

            case affiliateMeta = "affiliate_meta"

            case hsnCodeId = "hsn_code_id"

            case id = "_id"

            case companyId = "company_id"

            case identifier

            case affiliateStoreId = "affiliate_store_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.unitPrice = unitPrice

            self.pdfLinks = pdfLinks

            self.transferPrice = transferPrice

            self.deliveryCharge = deliveryCharge

            self.avlQty = avlQty

            self.itemId = itemId

            self.priceMarked = priceMarked

            self.modifiedOn = modifiedOn

            self.amountPaid = amountPaid

            self.fyndStoreId = fyndStoreId

            self.sellerIdentifier = sellerIdentifier

            self.sku = sku

            self.discount = discount

            self.priceEffective = priceEffective

            self.quantity = quantity

            self.storeId = storeId

            self.itemSize = itemSize

            self.affiliateMeta = affiliateMeta

            self.hsnCodeId = hsnCodeId

            self.id = id

            self.companyId = companyId

            self.identifier = identifier

            self.affiliateStoreId = affiliateStoreId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            itemId = try container.decode(Int.self, forKey: .itemId)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            sku = try container.decode(String.self, forKey: .sku)

            discount = try container.decode(Double.self, forKey: .discount)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            quantity = try container.decode(Int.self, forKey: .quantity)

            storeId = try container.decode(Int.self, forKey: .storeId)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            id = try container.decode(String.self, forKey: .id)

            companyId = try container.decode(Int.self, forKey: .companyId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)
        }
    }
}
