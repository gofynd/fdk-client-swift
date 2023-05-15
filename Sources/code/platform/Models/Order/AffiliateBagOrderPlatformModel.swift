

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var priceEffective: Double

        public var itemId: Int

        public var amountPaid: Double

        public var avlQty: Int

        public var transferPrice: Int

        public var modifiedOn: String

        public var id: String

        public var fyndStoreId: String

        public var sku: String

        public var itemSize: String

        public var hsnCodeId: String

        public var quantity: Int

        public var storeId: Int

        public var companyId: Int

        public var discount: Double

        public var deliveryCharge: Double

        public var unitPrice: Double

        public var identifier: [String: Any]

        public var affiliateMeta: [String: Any]

        public var priceMarked: Double

        public var pdfLinks: MarketPlacePdf?

        public var affiliateStoreId: String

        public var sellerIdentifier: String

        public enum CodingKeys: String, CodingKey {
            case priceEffective = "price_effective"

            case itemId = "item_id"

            case amountPaid = "amount_paid"

            case avlQty = "avl_qty"

            case transferPrice = "transfer_price"

            case modifiedOn = "modified_on"

            case id = "_id"

            case fyndStoreId = "fynd_store_id"

            case sku

            case itemSize = "item_size"

            case hsnCodeId = "hsn_code_id"

            case quantity

            case storeId = "store_id"

            case companyId = "company_id"

            case discount

            case deliveryCharge = "delivery_charge"

            case unitPrice = "unit_price"

            case identifier

            case affiliateMeta = "affiliate_meta"

            case priceMarked = "price_marked"

            case pdfLinks = "pdf_links"

            case affiliateStoreId = "affiliate_store_id"

            case sellerIdentifier = "seller_identifier"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.priceEffective = priceEffective

            self.itemId = itemId

            self.amountPaid = amountPaid

            self.avlQty = avlQty

            self.transferPrice = transferPrice

            self.modifiedOn = modifiedOn

            self.id = id

            self.fyndStoreId = fyndStoreId

            self.sku = sku

            self.itemSize = itemSize

            self.hsnCodeId = hsnCodeId

            self.quantity = quantity

            self.storeId = storeId

            self.companyId = companyId

            self.discount = discount

            self.deliveryCharge = deliveryCharge

            self.unitPrice = unitPrice

            self.identifier = identifier

            self.affiliateMeta = affiliateMeta

            self.priceMarked = priceMarked

            self.pdfLinks = pdfLinks

            self.affiliateStoreId = affiliateStoreId

            self.sellerIdentifier = sellerIdentifier
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            itemId = try container.decode(Int.self, forKey: .itemId)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            id = try container.decode(String.self, forKey: .id)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            sku = try container.decode(String.self, forKey: .sku)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            quantity = try container.decode(Int.self, forKey: .quantity)

            storeId = try container.decode(Int.self, forKey: .storeId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            discount = try container.decode(Double.self, forKey: .discount)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var priceEffective: Double

        public var itemId: Int

        public var amountPaid: Double

        public var avlQty: Int

        public var transferPrice: Int

        public var modifiedOn: String

        public var id: String

        public var fyndStoreId: String

        public var sku: String

        public var itemSize: String

        public var hsnCodeId: String

        public var quantity: Int

        public var storeId: Int

        public var companyId: Int

        public var discount: Double

        public var deliveryCharge: Double

        public var unitPrice: Double

        public var identifier: [String: Any]

        public var affiliateMeta: [String: Any]

        public var priceMarked: Double

        public var pdfLinks: MarketPlacePdf?

        public var affiliateStoreId: String

        public var sellerIdentifier: String

        public enum CodingKeys: String, CodingKey {
            case priceEffective = "price_effective"

            case itemId = "item_id"

            case amountPaid = "amount_paid"

            case avlQty = "avl_qty"

            case transferPrice = "transfer_price"

            case modifiedOn = "modified_on"

            case id = "_id"

            case fyndStoreId = "fynd_store_id"

            case sku

            case itemSize = "item_size"

            case hsnCodeId = "hsn_code_id"

            case quantity

            case storeId = "store_id"

            case companyId = "company_id"

            case discount

            case deliveryCharge = "delivery_charge"

            case unitPrice = "unit_price"

            case identifier

            case affiliateMeta = "affiliate_meta"

            case priceMarked = "price_marked"

            case pdfLinks = "pdf_links"

            case affiliateStoreId = "affiliate_store_id"

            case sellerIdentifier = "seller_identifier"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.priceEffective = priceEffective

            self.itemId = itemId

            self.amountPaid = amountPaid

            self.avlQty = avlQty

            self.transferPrice = transferPrice

            self.modifiedOn = modifiedOn

            self.id = id

            self.fyndStoreId = fyndStoreId

            self.sku = sku

            self.itemSize = itemSize

            self.hsnCodeId = hsnCodeId

            self.quantity = quantity

            self.storeId = storeId

            self.companyId = companyId

            self.discount = discount

            self.deliveryCharge = deliveryCharge

            self.unitPrice = unitPrice

            self.identifier = identifier

            self.affiliateMeta = affiliateMeta

            self.priceMarked = priceMarked

            self.pdfLinks = pdfLinks

            self.affiliateStoreId = affiliateStoreId

            self.sellerIdentifier = sellerIdentifier
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            itemId = try container.decode(Int.self, forKey: .itemId)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            id = try container.decode(String.self, forKey: .id)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            sku = try container.decode(String.self, forKey: .sku)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            quantity = try container.decode(Int.self, forKey: .quantity)

            storeId = try container.decode(Int.self, forKey: .storeId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            discount = try container.decode(Double.self, forKey: .discount)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)
        }
    }
}
